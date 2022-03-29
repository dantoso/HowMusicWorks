
import SwiftUI

public protocol Wave {
	var maxAmplitude: Double {get set}
		
	///Value Y of the function for an angle X
	func intensity(forAngle: Double) -> Double
	
}


public struct PureWave: Wave, Equatable {
		
	public var maxAmplitude: Double
	public var frequency: Double
	
	public init(frequency: Double = 4.4, maxAmplitude: Double = 25) {
		self.frequency = frequency
		self.maxAmplitude = maxAmplitude
	}
	
	public func intensity(forAngle angle: Double) -> Double {
		let sine = sin(angle*frequency)
		let y = sine * maxAmplitude
		
		return y
	}
	
}

public struct ChordWave: Wave {
	
	public var maxAmplitude: Double {
		get {
			a.maxAmplitude + b.maxAmplitude + c.maxAmplitude
		}
		set{}
	}
	
	public let a: PureWave
	public let b: PureWave
	public let c: PureWave

	
	public init(a: PureWave, b: PureWave, c: PureWave) {
		self.a = a
		self.b = b
		self.c = c
	}
	
	public init(container: WaveContainer) {
		a = container.waveA
		b = container.waveB
		c = container.waveC
	}
	
	public func intensity(forAngle angle: Double) -> Double {
		return a.intensity(forAngle: angle) + b.intensity(forAngle: angle) + c.intensity(forAngle: angle)
	}
	
	
}



