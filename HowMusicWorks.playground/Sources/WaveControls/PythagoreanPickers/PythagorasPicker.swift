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

			Picker("", selection: $frequency) {
				Text("first").tag(PythagoreanTuning.first)
				Text("minor second").tag(PythagoreanTuning.minorSecond)
				Text("second").tag(PythagoreanTuning.second)
				Text("minor third").tag(PythagoreanTuning.minorThird)
				Text("third").tag(PythagoreanTuning.third)
				Text("fourth").tag(PythagoreanTuning.fourth)
				Text("minor fifth").tag(PythagoreanTuning.minorFifth)
			}
			.pickerStyle(.segmented)
			
			Picker("", selection: $frequency) {
				Text("fifth").tag(PythagoreanTuning.fifth)
				Text("minor sixth").tag(PythagoreanTuning.minorSixth)
				Text("sixth").tag(PythagoreanTuning.sixth)
				Text("minor seventh").tag(PythagoreanTuning.minorSeventh)
				Text("seventh").tag(PythagoreanTuning.seventh)
				Text("octave").tag(PythagoreanTuning.eighth)
			}
			.pickerStyle(.segmented)

		}
	}
}


