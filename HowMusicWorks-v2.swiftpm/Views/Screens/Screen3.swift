import SwiftUI


struct Screen3: View {
	
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
			
			WIEqualTempPickers(sound: $viewModel.sound)
			
			Spacer()
		}
		.sheet(isPresented: $showInfo, onDismiss: nil) {
			InfoView3()
		}
		
	}
}


struct InfoView3: View {
	var body: some View {
		VStack {
			Text("Equal temperament")
				.font(.headline)
				.padding()

			Text("\tIf your're really good at maths or already know about tuning, you probably know that pythagorean tuning has a big drawback. When you play in wider ranges using the pythagorean tuning, there are certain fifths that sound extremely bad, which is not supposed to happen, fifths are supposed to sound almost as nice as an octave.")
				.padding()

			Text("\tLooking to solve this problem, many other tuning systems were developed. The one most accepted and popular in western music is the equal temperament. Instead of using multiple ratios to derive the intervals equal temprament only uses the octave ratio (2/1) and inside the first and octave interval it calculates other 10 equally spaced notes. Using this system of equally spaced notes makes it is possible to play any interval with the guarantee that it will sound the same throughout any other range.")
				.padding()
			Spacer()
		}
	}
}

