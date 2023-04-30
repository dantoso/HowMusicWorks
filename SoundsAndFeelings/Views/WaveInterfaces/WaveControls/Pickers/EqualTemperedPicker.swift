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
					Text("Mute wave")
				}
			}
			
			Picker("", selection: $frequency) {
				Text("first").tag(EqualTempered.a)
				Text("flat second").tag(EqualTempered.aSharp)
				Text("second").tag(EqualTempered.b)
				Text("flat third").tag(EqualTempered.c)
				Text("third").tag(EqualTempered.cSharp)
				Text("fourth").tag(EqualTempered.d)
				Text("flat fifth").tag(EqualTempered.dSharp)
			}
			.pickerStyle(.segmented)
			
			Picker("", selection: $frequency) {
				Text("fifth").tag(EqualTempered.e)
				Text("flat sixth").tag(EqualTempered.f)
				Text("sixth").tag(EqualTempered.fSharp)
				Text("flat seventh").tag(EqualTempered.g)
				Text("seventh").tag(EqualTempered.gSharp)
				Text("octave").tag(EqualTempered.a*2)
				
			}
			.pickerStyle(.segmented)

		}
	}
}

