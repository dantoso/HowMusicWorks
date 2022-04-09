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
				Text("C4").tag(PythagoreanTuning.minorThird*0.5)
				Text("C#4").tag(PythagoreanTuning.third*0.5)
				Text("D4").tag(PythagoreanTuning.fourth*0.5)
				Text("D#4").tag(PythagoreanTuning.minorFifth*0.5)
			}
			.pickerStyle(.segmented)
			
			Picker("", selection: $frequency) {
				Text("E4").tag(PythagoreanTuning.fifth*0.5)
				Text("F4").tag(PythagoreanTuning.minorSixth*0.5)
				Text("F#4").tag(PythagoreanTuning.sixth*0.5)
				Text("G4").tag(PythagoreanTuning.minorSeventh*0.5)
				Text("G#4").tag(PythagoreanTuning.seventh*0.5)
				Text("A4").tag(PythagoreanTuning.first)
				Text("A#4").tag(PythagoreanTuning.minorSecond)
			}
			.pickerStyle(.segmented)
			
			Picker("", selection: $frequency) {
				
				Text("B4").tag(PythagoreanTuning.second)
				Text("C5").tag(PythagoreanTuning.minorThird)
				Text("C#5").tag(PythagoreanTuning.third)
				Text("D5").tag(PythagoreanTuning.fourth)
				Text("D#5").tag(PythagoreanTuning.minorFifth)
				Text("E5").tag(PythagoreanTuning.fifth)
				Text("F5").tag(PythagoreanTuning.minorSixth)
			}
			.pickerStyle(.segmented)
			
			Picker("", selection: $frequency) {
				
				Text("F#5").tag(PythagoreanTuning.sixth)
				Text("G5").tag(PythagoreanTuning.minorSeventh)
				Text("G#5").tag(PythagoreanTuning.seventh)
				Text("A5").tag(PythagoreanTuning.first*2)
				Text("A#5").tag(PythagoreanTuning.minorSecond*2)
				Text("B5").tag(PythagoreanTuning.second*2)
				Text("C6").tag(PythagoreanTuning.minorThird*2)
			}
			.pickerStyle(.segmented)

		}
	}
}


