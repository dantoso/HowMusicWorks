
import UIKit
import SwiftUI

public protocol Wave {
	var maxAmplitude: Double {get set}
	
	func drawPath(in rect: CGRect) -> UIBezierPath
	
	///Value Y of the function for an angle X
	func intensity(forAngle: Double) -> Double
	
}

public extension Wave {
	
	func drawPath(in rect: CGRect) -> UIBezierPath {
		let path = UIBezierPath()
		
		let sec: Double = 200
		let height = Double(rect.height)
		let origin = CGPoint(x: 0, y: height*0.5)
		
		path.move(to: origin)
		for x in stride(from: 0, through: 2000.0, by: 1) {
			let angle = x/sec * 2*Double.pi
			let y = intensity(forAngle: angle) + height*0.5
			
			path.addLine(to: CGPoint(x: x, y: y))
		}
		
		return path
	}
	
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



