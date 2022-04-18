import SwiftUI

struct EqualTemperedPicker: View {
	
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
					Text("Disable wave")
				}
			}
			
			Picker("", selection: $frequency) {
				Text("A4").tag(EqualTempered.a)
				Text("A#4").tag(EqualTempered.aSharp)
				Text("B4").tag(EqualTempered.b)
				Text("C5").tag(EqualTempered.c)
				Text("C#5").tag(EqualTempered.cSharp)
				Text("D5").tag(EqualTempered.d)
				Text("D#5").tag(EqualTempered.dSharp)
			}
			.pickerStyle(.segmented)
			
			Picker("", selection: $frequency) {
				Text("E5").tag(EqualTempered.e)
				Text("F5").tag(EqualTempered.f)
				Text("F#5").tag(EqualTempered.fSharp)
				Text("G5").tag(EqualTempered.g)
				Text("G#5").tag(EqualTempered.gSharp)
				Text("A5").tag(EqualTempered.a*2)
				Text("A#5").tag(EqualTempered.aSharp*2)
				
			}
			.pickerStyle(.segmented)

		}
	}
}

