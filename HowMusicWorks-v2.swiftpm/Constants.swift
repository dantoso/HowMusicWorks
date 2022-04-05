import SwiftUI


public struct EqualTempered {
	static public let a: Float = 440.0
	static public let aSharp: Float = 466.1637615180899
	static public let b: Float = 493.8833012561241
	static public let c: Float = 523.2511306011972
	static public let cSharp: Float = 554.3652619537442
	static public let d: Float = 587.3295358348151
	static public let dSharp: Float = 622.2539674441618
	static public let e: Float = 659.2551138257398
	static public let f: Float = 698.4564628660078
	static public let fSharp: Float = 739.9888454232688
	static public let g: Float = 783.9908719634985
	static public let gSharp: Float = 830.6093951598903
}

public struct PythagoreanTuning {
	static public var first: Double = 4.4 {
		didSet {
			if first > 1000 {
				first = 1000
			}
			else if first < 0 {
				first = 0
			}
			first /= 100
		}
	}
	
	// a full step from the seventh but one octave below
	static public var minorSecond: Double { fullStep(from: seventh) * 0.5 }
	
	static public var second: Double { fullStep(from: first) }
	
	// first * 6/5
	static public var minorThird: Double { first * 1.2 }
	
	// first * 5/4
	static public var third: Double { first * 1.25 }
	
	static public var fourth: Double { fullStep(from: minorThird)}
	
	static public var minorFifth: Double { fullStep(from: third) }
	
	// first * 3/2
	static public var fifth: Double { first * 1.5 }
	
	static public var minorSixth: Double { fullStep(from: minorFifth)}
	
	static public var sixth: Double { fullStep(from: fifth) }
	
	static public var minorSeventh: Double { fullStep(from: minorSixth)}
	
	static public var seventh: Double { fullStep(from: sixth) }
	
	static public var eighth: Double { first * 2 }
	
	/// This function raises a frequency to a frequency one step above according pythagorean tuning.
	/// The function takes the original note and returns a note two fifths above and one octave below, which equals a note one step higher than the original.
	static func fullStep(from original: Double) -> Double {
		return original * 1.5 * 1.5 * 0.5
	}

}

