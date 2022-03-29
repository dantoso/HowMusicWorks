import SwiftUI

public struct PythagorasNotePicker: View {
	
	@Binding var frequency: Double
	
	public init(frequency: Binding<Double>) {
		self._frequency = frequency
	}
	
	public var body: some View {
		VStack {
			Picker("Major scale", selection: $frequency) {
				Text("first").tag(PythagorasTuning.homeNote)
				Text("second").tag(PythagorasTuning.second)
				Text("third").tag(PythagorasTuning.third)
				Text("fourth").tag(PythagorasTuning.fourth)
				Text("fifth").tag(PythagorasTuning.fifth)
				Text("sixth").tag(PythagorasTuning.sixth)
				Text("seventh").tag(PythagorasTuning.seventh)
				Text("octave").tag(PythagorasTuning.eighth)
			}
			.pickerStyle(.segmented)
			
			Picker("Other intervals", selection: $frequency) {
				Text("minor second").tag(PythagorasTuning.minorSecond)
				Text("minor third").tag(PythagorasTuning.minorThird)
				Text("minor fifth").tag(PythagorasTuning.minorFifth)
				Text("minor sixth").tag(PythagorasTuning.minorSixth)
				Text("minor seventh").tag(PythagorasTuning.minorSeventh)
			}
			.pickerStyle(.segmented)

		}
	}
}


