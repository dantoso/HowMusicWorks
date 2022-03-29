
import Foundation
import AVFoundation

final public class Synth {
	
	private static let singleton = Synth()
	public static var shared: Synth { return singleton }
	public let audioEngine: AVAudioEngine
	
	public var waves = WaveContainer() {
		didSet {
			if oldValue.waveA.frequency != 0 {
				deltaAHz = Float(waves.waveA.frequency - oldValue.waveA.frequency ) * 100
			}
			else {
				deltaAHz = 0
			}
			
			if oldValue.waveB.frequency != 0 {
				deltaBHz = Float(waves.waveB.frequency - oldValue.waveB.frequency) * 100
			}
			else {
				deltaBHz = 0
			}
			
			if oldValue.waveC.frequency != 0 {
				deltaCHz = Float(waves.waveC.frequency - oldValue.waveC.frequency) * 100
			}
			else {
				deltaCHz = 0
			}
			
		}
	}
	
	var deltaAHz: Float = 0
	var deltaBHz: Float = 0
	var deltaCHz: Float = 0
	
	var aHz: Float {
		Float(waves.waveA.frequency) * 100
	}
	var bHz: Float {
		Float(waves.waveB.frequency) * 100
	}
	var cHz: Float {
		Float(waves.waveC.frequency) * 100
	}
	
	
	public var volume: Float {
		get {
			audioEngine.mainMixerNode.outputVolume
		}
		set {
			audioEngine.mainMixerNode.outputVolume = newValue
		}
	}
	var timeA: Float = 0
	var timeB: Float = 0
	var timeC: Float = 0
	let sampleRate: Double
	let deltaTime: Float
	
	lazy var sourceNode = AVAudioSourceNode { (_, _, frameCount, audioBufferList) -> OSStatus in
		
		let ablPointer = UnsafeMutableAudioBufferListPointer(audioBufferList)
		
		let aRamp = self.deltaAHz
		let bRamp = self.deltaBHz
		let cRamp = self.deltaCHz
		
		let oldA = self.aHz - aRamp
		let oldB = self.bHz - bRamp
		let oldC = self.cHz - cRamp
		
		let aPeriod = 1/oldA
		let bPeriod = 1/oldB
		let cPeriod = 1/oldC

		for frame in 0..<Int(frameCount) {
			let aSample = self.sampleValForSine(oldFrequency: oldA, ramp: aRamp, period: aPeriod, time: self.timeA)
			let bSample = self.sampleValForSine(oldFrequency: oldB, ramp: bRamp, period: bPeriod, time: self.timeB)
			let cSample = self.sampleValForSine(oldFrequency: oldC, ramp: cRamp, period: cPeriod, time: self.timeC)
			
			self.timeA = fmod(self.timeA, aPeriod)
			self.timeB = fmod(self.timeB, bPeriod)
			self.timeC = fmod(self.timeC, cPeriod)
			
			let sampleTotalVal = aSample + bSample + cSample
			self.timeA += self.deltaTime
			self.timeB += self.deltaTime
			self.timeC += self.deltaTime
			
			for buffer in ablPointer {
				let buf: UnsafeMutableBufferPointer<Float> = UnsafeMutableBufferPointer(buffer)
				buf[frame] = sampleTotalVal
			}
			
		}
		return noErr
	}
	
	func sampleValForSine(oldFrequency: Float, ramp: Float, period: Float, time: Float) -> Float {
		
		let percent = fmod(time, period)
		let frequency = oldFrequency + ramp * percent
		
		let angle = 2*Float.pi * time
		let sine = sin(angle * frequency)
		
		return sine
	}
	
//	func sampleValForwaves() -> Float {
//		let aVal = getSampleValFor(waves.a)
//		let bVal = getSampleValFor(waves.b)
//		let cVal = getSampleValFor(waves.c)
//
//		return aVal + bVal + cVal
//	}
//
//	func getSampleValFor(_ wave: PureWave) -> Float {
//		let angle = 2*Double.pi * Double(time)
//		let sine = sin(angle * wave.frequency * 100)
//		let sampleVal = Float(sine)
//
//		return sampleVal
//	}
//
	init() {
		audioEngine = AVAudioEngine()
		let mainMixer = audioEngine.mainMixerNode
		let outputNode = audioEngine.outputNode
		
		let format = outputNode.inputFormat(forBus: 0)
		
		sampleRate = format.sampleRate
		deltaTime = 1/Float(sampleRate)
		
		let inputFormat = AVAudioFormat(commonFormat: format.commonFormat, sampleRate: sampleRate, channels: 1, interleaved: format.isInterleaved)
		audioEngine.attach(sourceNode)
		audioEngine.connect(sourceNode, to: mainMixer, format: inputFormat)
		audioEngine.connect(mainMixer, to: outputNode, format: nil)
		
		mainMixer.outputVolume = 0
		
		do {
			try audioEngine.start()
		}
		catch { print("Could not start engine: \(error.localizedDescription)") }
	}
	
}

