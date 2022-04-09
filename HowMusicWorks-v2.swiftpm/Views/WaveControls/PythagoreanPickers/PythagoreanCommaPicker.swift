import SwiftUI

public struct PythagoreanCommaNotePicker: View {
	
	@Binding var frequency: Double
	
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
				Text("A3").tag(PythagoreanTuning.first*0.5)
				Text("A#3").tag(PythagoreanTuning.minorSecond*0.5)
				Text("B3").tag(PythagoreanTuning.second*0.5)
				Text("C3").tag(PythagoreanTuning.minorThird*0.5)
				Text("C#3").tag(PythagoreanTuning.third*0.5)
				Text("D3").tag(PythagoreanTuning.fourth*0.5)
			}
			.pickerStyle(.segmented)
			
			Picker("", selection: $frequency) {
				Text("D#3").tag(PythagoreanTuning.minorFifth*0.5)
				Text("E3").tag(PythagoreanTuning.fifth*0.5)
				Text("F3").tag(PythagoreanTuning.minorSixth*0.5)
				Text("F#3").tag(PythagoreanTuning.sixth*0.5)
				Text("G3").tag(PythagoreanTuning.minorSeventh*0.5)
				Text("G#3").tag(PythagoreanTuning.seventh*0.5)
			}
			.pickerStyle(.segmented)
			
			Picker("", selection: $frequency) {
				Text("A4").tag(PythagoreanTuning.first)
				Text("A#4").tag(PythagoreanTuning.minorSecond)
				Text("B4").tag(PythagoreanTuning.second)
				Text("C4").tag(PythagoreanTuning.minorThird)
				Text("C#4").tag(PythagoreanTuning.third)
				Text("D4").tag(PythagoreanTuning.fourth)
			}
			.pickerStyle(.segmented)
			
			Picker("", selection: $frequency) {
				Text("D#4").tag(PythagoreanTuning.minorFifth)
				Text("E4").tag(PythagoreanTuning.fifth)
				Text("F4").tag(PythagoreanTuning.minorSixth)
				Text("F#4").tag(PythagoreanTuning.sixth)
				Text("G4").tag(PythagoreanTuning.minorSeventh)
				Text("G#4").tag(PythagoreanTuning.seventh)
			}
			.pickerStyle(.segmented)

		}
	}
}


