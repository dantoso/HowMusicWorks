import SwiftUI


public struct EqualTempered {
	static public let a: Double = 4.400
	static public let aSharp: Double = 4.661637615180899
	static public let b: Double = 4.938833012561241
	static public let c: Double = 5.232511306011972
	static public let cSharp: Double = 5.543652619537442
	static public let d: Double = 5.873295358348151
	static public let dSharp: Double = 6.222539674441618
	static public let e: Double = 6.592551138257398
	static public let f: Double = 6.984564628660078
	static public let fSharp: Double = 7.399888454232688
	static public let g: Double = 7.839908719634985
	static public let gSharp: Double = 8.306093951598903
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
	static public var flatSecond: Double { fullStep(from: seventh) * 0.5 }
	
	static public var second: Double { fullStep(from: first) }
	
	// first * 6/5
	static public var flatThird: Double { first * 1.2 }
	
	// first * 5/4
	static public var third: Double { first * 1.25 }
	
	static public var fourth: Double { fullStep(from: flatThird)}
	
	static public var flatFifth: Double { fullStep(from: third) }
	
	// first * 3/2
	static public var fifth: Double { first * 1.5 }
	
	static public var flatSixth: Double { fullStep(from: flatFifth)}
	
	static public var sixth: Double { fullStep(from: fifth) }
	
	static public var flatSeventh: Double { fullStep(from: flatSixth)}
	
	static public var seventh: Double { fullStep(from: sixth) }
	
	static public var eighth: Double { first * 2 }
	
	/// This function raises a frequency to a frequency one step above according pythagorean tuning.
	/// The function takes the original note and returns a note two fifths above and one octave below, which equals a note one step higher than the original.
	static func fullStep(from original: Double) -> Double {
		return original * 1.5 * 1.5 * 0.5
	}

}

