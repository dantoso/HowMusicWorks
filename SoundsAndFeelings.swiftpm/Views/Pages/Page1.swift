import SwiftUI

struct Page1: View {
	
	@Binding var sound: Sound
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
				.padding(.leading)
				
				Text("Sounds and feelings")
					.font(.title)
					.padding(.leading)
				Spacer()
			}
			
			WaveInterfaceSliders(sound: $sound)
			
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
			
			Text("\tHey there! Welcome to my playground! Here, I made 4 interfaces (separated by pages) that you can play with to hear and see how sound waves make us feel things!\n\tIn these interfaces you can control the frequency of 3 waves, they are added up to form a resultant wave that you can listen to by pressing play (you can scroll the resultant horizontaly to see more of it).")
				.padding()
			
			Text("\tAlso, most of the info in all the pages are optional to experience this playground, in essence, this playground is just a sound frequency generator that works in real time, the texts contain some explanation about what's in the page and experiment suggestions.")
				.padding()
			
			HStack {
				Text("Some experiments:\n- Try to find ratios of frequencies that sound nice. If you want a start, try listening to a frequency and double that frequency (ratio of 2/1).\n- You can also use the visuals, try to see what kinds of patterns are drawn by nice sounding ratios, how long they are and how they repeat.")
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

