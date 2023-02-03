import SwiftUI

struct PythagorasNotePicker: View {
	
	@Binding var frequency: Double
	
	var body: some View {
		VStack {
			Button {
				frequency = 0
			} label: {
				if frequency == 0 {
					EmptyView()
				}
				else {
					Text("Mute wave")
				}
			}
//			.buttonStyle(.bordered)

			Picker("", selection: $frequency) {
				Text("first").tag(PythagoreanTuning.first)
				Text("flat second").tag(PythagoreanTuning.flatSecond)
				Text("second").tag(PythagoreanTuning.second)
				Text("flat third").tag(PythagoreanTuning.flatThird)
				Text("third").tag(PythagoreanTuning.third)
				Text("fourth").tag(PythagoreanTuning.fourth)
				Text("flat fifth").tag(PythagoreanTuning.flatFifth)
			}
			.pickerStyle(.segmented)
			
			Picker("", selection: $frequency) {
				Text("fifth").tag(PythagoreanTuning.fifth)
				Text("flat sixth").tag(PythagoreanTuning.flatSixth)
				Text("sixth").tag(PythagoreanTuning.sixth)
				Text("flat seventh").tag(PythagoreanTuning.flatSeventh)
				Text("seventh").tag(PythagoreanTuning.seventh)
				Text("octave").tag(PythagoreanTuning.eighth)
			}
			.pickerStyle(.segmented)

		}
	}
}


