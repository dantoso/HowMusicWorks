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

public struct PythagorasTuning {
	static public var homeNote: Double = 4.4 {
		didSet {
			homeNote /= 100
		}
	}
	static public var minorSecond: Double { seventh * 1.5 * 1.5 * 0.25 }
	static public var second: Double { homeNote * 1.5 * 1.5 * 0.5 }
	static public var minorThird: Double { homeNote * 1.2 }
	static public var third: Double { homeNote * 1.25 }
	static public var fourth: Double { minorThird * 1.5 * 1.5 * 0.5 }
	static public var minorFifth: Double { third * 1.5 * 1.5 * 0.5 }
	static public var fifth: Double { homeNote * 1.5 }
	static public var minorSixth: Double { fourth * 1.5 * 1.5 * 0.5 }
	static public var sixth: Double { fifth * 1.5 * 1.5 * 0.5 }
	static public var minorSeventh: Double { minorSixth * 1.5 * 1.5 * 0.5 }
	static public var seventh: Double { sixth * 1.5 * 1.5 * 0.5 }
	static public var eighth: Double { homeNote * 2 }
}

public struct Sizes {
	static public let width: CGFloat = 800
	static public let height: CGFloat = 900
}

