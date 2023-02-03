import SwiftUI

// here to go higher a half step you multiply the frequency by (12√2), because (12√2)ˆ12 = 2, then after 12 half steps, you get the octave of the first note.
struct EqualTempered {
	static let a: Double = 4.400
	static let aSharp: Double = 4.661637615180899
	static let b: Double = 4.938833012561241
	static let c: Double = 5.232511306011972
	static let cSharp: Double = 5.543652619537442
	static let d: Double = 5.873295358348151
	static let dSharp: Double = 6.222539674441618
	static let e: Double = 6.592551138257398
	static let f: Double = 6.984564628660078
	static let fSharp: Double = 7.399888454232688
	static let g: Double = 7.839908719634985
	static let gSharp: Double = 8.306093951598903
}

struct PythagoreanTuning {
	static var first: Double = 4.4 {
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
	static var flatSecond: Double { fullStep(from: seventh) * 0.5 }
	
	static var second: Double { fullStep(from: first) }
	
	// first * 6/5
	static var flatThird: Double { first * 1.2 }
	
	// first * 5/4
	static var third: Double { first * 1.25 }
	
	static var fourth: Double { fullStep(from: flatThird)}
	
	static var flatFifth: Double { fullStep(from: third) }
	
	// first * 3/2
	static var fifth: Double { first * 1.5 }
	
	static var flatSixth: Double { fullStep(from: flatFifth)}
	
	static var sixth: Double { fullStep(from: fifth) }
	
	static var flatSeventh: Double { fullStep(from: flatSixth)}
	
	static var seventh: Double { fullStep(from: sixth) }
	
	static var eighth: Double { first * 2 }
	
	/// This function raises a frequency to a frequency one step above according pythagorean tuning.
	/// The function takes the original note and returns a note two fifths above and one octave below, which equals a note one step higher than the original.
	static func fullStep(from original: Double) -> Double {
		return original * 1.5 * 1.5 * 0.5
	}

}

