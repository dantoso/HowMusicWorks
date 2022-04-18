import SwiftUI

struct Screen2: View {
	
	@EnvironmentObject var viewModel: ViewModel
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
				Spacer()
			}
			
			InterfaceP3(sound: $viewModel.sound)
			
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

			Text("\tSo, a long time ago, it is said that Pythagoras figured tuning out. In this page you can experiment with the 12 note system he created. He derived all of these notes by multiplying a base/original frequency, called the first in western music theory, by a specific ratio.")
				.padding()

			Text("\tFor example, the ratio of an octave is 2/1, so you multiply the first (in this example 440 Hz) by 2/1, and you get 880 Hz, which means 880 Hz is the octave of 440 Hz. The octave is a very important interval, if you pay close attention, the octave and the first sound very similar adn they produce a very comfortable sounding sound.")
				.padding()

			HStack {
				Text("Some cool experiments:\n\n- Try to notice that when you play the first with another note near the octave, your ears kind of want that note to become the octave, and when you actually change it to an octave, you feel resolution.\n\n- The same as above happens with notes near the first, but this way the resolution happens when you change it to the first.\n\n- Play a first with a third and a fifth, then after listening to it change the third to a flat third and notice that the sound becomes sadder and darker, change it back to a third and it lights up again.\n\n- Notice that sadder, closed or discomforable sounds draw more complicated and hard to understand patterns, while comfortable and brighter sounds draw simpler and easier to read patterns on the waveform.")
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

