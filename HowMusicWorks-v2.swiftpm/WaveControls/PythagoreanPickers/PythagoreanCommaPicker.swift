import SwiftUI

public struct PythagoreanCommaNotePicker: View {
	
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
				Text("A4").tag(PythagoreanTuning.first)
				Text("B4").tag(PythagoreanTuning.second)
				Text("C4").tag(PythagoreanTuning.third)
				Text("D4").tag(PythagoreanTuning.fourth)
				Text("E4").tag(PythagoreanTuning.fifth)
				Text("F4").tag(PythagoreanTuning.sixth)
				Text("G4").tag(PythagoreanTuning.seventh)
			}
			.pickerStyle(.segmented)
			
			Picker("", selection: $frequency) {
				Text("A5").tag(PythagoreanTuning.eighth)
				Text("B5").tag(PythagoreanTuning.second*2)
				Text("C5").tag(PythagoreanTuning.third*2)
				Text("D5").tag(PythagoreanTuning.fourth*2)
				Text("E5").tag(PythagoreanTuning.fifth*2)
				Text("F5").tag(PythagoreanTuning.sixth*2)
				Text("G5").tag(PythagoreanTuning.seventh*2)
			}
			.pickerStyle(.segmented)

		}
	}
}


