import SwiftUI

public struct PythagorasNotePicker: View {
	
	@Binding var frequency: Double
	
	public init(frequency: Binding<Double>) {
		self._frequency = frequency
	}
	
	public var body: some View {
		VStack {
			Button {
				frequency = 0
			} label: {
				if frequency == 0 {
					EmptyView()
				}
				else {
					Text("Disable wave")
				}
			}

			Picker("Major scale", selection: $frequency) {
				Text("first").tag(PythagorasTuning.first)
				Text("minor second").tag(PythagorasTuning.minorSecond)
				Text("second").tag(PythagorasTuning.second)
				Text("minor third").tag(PythagorasTuning.minorThird)
				Text("third").tag(PythagorasTuning.third)
				Text("fourth").tag(PythagorasTuning.fourth)
				Text("minor fifth").tag(PythagorasTuning.minorFifth)
			}
			.pickerStyle(.segmented)
			
			Picker("Other intervals", selection: $frequency) {
				Text("fifth").tag(PythagorasTuning.fifth)
				Text("minor sixth").tag(PythagorasTuning.minorSixth)
				Text("sixth").tag(PythagorasTuning.sixth)
				Text("minor seventh").tag(PythagorasTuning.minorSeventh)
				Text("seventh").tag(PythagorasTuning.seventh)
				Text("octave").tag(PythagorasTuning.eighth)
			}
			.pickerStyle(.segmented)

		}
	}
}


