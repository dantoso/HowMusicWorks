import SwiftUI

struct Screen1: View {
	
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
			
			InterfaceP2(sound: $viewModel.sound)
			
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
			
			Text("Hey there, welcome to my playground! Here, I'll try to show you how sound waves make us feel things!\nIn this screen you can control the frequency of 3 waves, they are added up to form a resultant wave that you can listen to by pressing play. The resultant and the other 3 waves have a visual representation drawn on the screen.")
				.padding()
			
			Text("So, how does music makes us feel? Well, I'll delay that answer for a bit, first I'd like you to try and do some investigation yourself.\nHere you have 3 waves, so try to isolate 1 of them by making the other 2 vibrate in 0 Hz. Then you can try and see how one frequency alone makes you feel as you change it around.")
				.padding()
			
			HStack {
				Text("Some hints:\n- Try to find ratios of frequencies that sound nice. If you want a start, try listening to a frequency and double that frequency (ratio of 2/1).\n- You can also use the visuals, try to see what kinds of patterns are drawn on the screen by nice sounding ratios, how long they are and how they repeat.")
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

