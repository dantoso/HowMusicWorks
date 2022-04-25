import SwiftUI

struct Page2: View {
	
	@Binding var sound: Sound
	@State var showInfo = false
	
	var body: some View {
		VStack {
			HStack {
				Button {
					showInfo = true
				} label: {
					Image(systemName: "info.circle")
						.font(Font.system(size: 24))
				}
				.padding(.leading)
				
				Text("Pythagorean tuning")
					.font(.title)
					.padding(.leading)
				Spacer()
			}
			
			WIPythNotePickers(sound: $sound)
			
			Spacer()
		}
		.sheet(isPresented: $showInfo, onDismiss: nil) {
			InfoView2()
		}
		
	}
	
}

struct InfoView2: View {
	var body: some View {
		VStack {
			Text("Pythagorean tuning")
				.font(.headline)
				.padding()

			Text("\tSo, a long time ago, it is said that Pythagoras figured tuning out. He derived the notes by multiplying a base/original frequency, (called the first in western music theory) by a specific ratio.")
				.padding()

			HStack {
				Text("\tPythagoras' system is thought around \"comfortable\" sounding intervals and \"uncomfortable\" sounding intervals.\n\n\tComfortable sounding notes (when played with non-flat notes): first, octave, fifth, third, flat third.\n\tUncomfortable sounding notes (when played with non-flat notes): flat fifth, flat sixth, flat second, seventh.")
				Spacer()
			}
			.padding()
			
			Text("\tFor centuries musicians have been playing \"uncomfortable\" notes to generate tension and then \"comfortable\" notes to release this tension, therefore making you feel more complex feelings. That is the basically what governs melody and harmony in western music.")
				.padding()
			
			HStack {
				Text("Some cool experiments:\n\n- Play a first with a third and a fifth, then after listening to it change the third to a flat third and notice that the sound becomes sadder and darker, change it back to a third and it lights up again.\n\n- Notice that sadder, closed or discomforable sounds draw more complicated and hard to understand patterns, while comfortable and brighter sounds draw simpler and shorter patterns on the waveform.")
				Spacer()
			}
			.padding()
			
			Spacer()
		}
	}
}

//struct MyPreviewProvider_Previews: PreviewProvider {
//	static var previews: some View {
//		InfoView()
//	}
//}

