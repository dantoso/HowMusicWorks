import SwiftUI

struct Page1: View {
	
	@EnvironmentObject var viewModel: ViewModel
	@State var showInfo = false
	
	var body: some View {
		VStack {
			HStack {
				Button {
					showInfo = true
				} label: {
					Image(systemName: "info.circle")
						.font(Font.system(size: 20))
				}
				Text("Sounds and feelings")
					.font(.title)
					.padding(.leading)
				Spacer()
			}
			
			WaveInterfaceSliders(sound: $viewModel.sound)
			
		}
		.sheet(isPresented: $showInfo, onDismiss: nil) {
			InfoView()
		}
		
	}
	
}

struct InfoView: View {
	var body: some View {
		VStack {
			Text("Sounds and feelings")
				.font(.headline)
				.padding()
			
			Text("\tHey there, welcome to my playground! Here, I made 3 interfaces (separated by pages) that you can play with to hear and see how sound waves make us feel things!\n\tIn these interfaces you can control the frequency of 3 waves, they are added up to form a resultant wave that you can listen to by pressing play. The resultant and the other 3 waves have a visual representation drawn on the screen.")
				.padding()
			
			Text("\tThe difference between each page lies in how you can control the pure waves. Here you use sliders, in the second you choose 12 pythagorean notes, on the third you choose 12 equal tempered notes.")
				.padding()
			
			Text("\tAlso, all the info in all the pages are optional, in essence, this playground is just a sound frequency generator that works in real time, so just toying with it and paying attention to the sounds, the waves drawn and how you feel listening to each sound is more than enough.")
				.padding()
			
			Text("\tSo, how does music makes us feel? Well, I'll delay that answer for a bit, first I'd like you to try and do some investigation yourself.\n\tHere you have 3 waves, so try to isolate 1 of them by making the other 2 vibrate in 0 Hz. Then you can try and see how one frequency alone makes you feel as you change it around.")
				.padding()
			
			HStack {
				Text("Some hints:\n- Try to find ratios of frequencies that sound nice. If you want a start, try listening to a frequency and double that frequency (ratio of 2/1).\n- You can also use the visuals, try to see what kinds of patterns are drawn by nice sounding ratios, how long they are and how they repeat.")
				Spacer()
			}
			.padding()
			
			HStack {
				Text("Once you want to see the real answer just go to the next page.")
				Spacer()
			}
			.padding()
			
			Spacer()


		}
	}
}

struct MyPreviewProvider_Previews: PreviewProvider {
	static var previews: some View {
		InfoView()
	}
}

