
import SwiftUI

public struct Sound: Equatable {
	public var isPlaying: Bool = false
	public var waves: WaveContainer = WaveContainer()
	
	public init() {
		self.isPlaying = false
		self.waves = WaveContainer()
	}
	
	public init(waveA: Bool, waveB: Bool, waveC: Bool) {
		self.isPlaying = false
		self.waves = WaveContainer(waveA: waveA, waveB: waveB, waveC: waveC)
	}
}

public struct WaveContainer: Equatable {
	public var waveA: PureWave
	public var waveB: PureWave
	public var waveC: PureWave
	
	public init() {
		waveA = PureWave()
		waveB = PureWave()
		waveC = PureWave()
	}
	
	public init(waveA: Bool, waveB: Bool, waveC: Bool) {
		self.waveA = waveA ? PureWave() : PureWave(frequency: 0, maxAmplitude: 0)
		self.waveB = waveB ? PureWave() : PureWave(frequency: 0, maxAmplitude: 0)
		self.waveC = waveC ? PureWave() : PureWave(frequency: 0, maxAmplitude: 0)
	}
	
}


public struct WaveView: View {
	
	struct WavePath: Shape {
		let wave: Wave
		let width: CGFloat
				
		func path(in rect: CGRect) -> Path {
			var path = Path()
			
			let relativeTotal: Double = 200
			let height = Double(rect.height)
			let width = Double(rect.width)

			let origin = CGPoint(x: 0, y: height*0.5)
			
			path.move(to: origin)
			for x in stride(from: 0, through: width, by: 1) {
				let angle = x/relativeTotal * 2*Double.pi
				let y = wave.intensity(forAngle: angle) + height*0.5
				
				path.addLine(to: CGPoint(x: x, y: y))
			}
			
			return path
		}
	}
	
	public let wave: Wave
	
	public var body: some View {
		WavePath(wave: wave, width: Sizes.width)
			.stroke(lineWidth: 2)
			.frame(height: wave.maxAmplitude*2)
	}
	
	public init(wave: Wave) {
		self.wave = wave
	}
}
