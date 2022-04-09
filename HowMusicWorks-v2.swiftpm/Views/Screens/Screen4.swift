import SwiftUI


struct Screen4: View {
	
	@EnvironmentObject var viewModel: ViewModel
	
	var body: some View {
		ScrollView(.vertical, showsIndicators: false) {
			Text("So, I just showed you how you fit 12 notes in an octave following the pythagorean tuning, now to go lower or higher than that octave you just need to divide or multiply by 2, respectively, every other note in that octave so you can play in bigger ranges!")
				.padding()
				.multilineTextAlignment(.center)
			Text("Well, Pythagoras' tuning system seems to work very well... and that's true... to an extent.")
				.padding()
				.multilineTextAlignment(.center)
			Text("You'll see that now I've increased the range of notes you can play by following this rule of taking every note we calculated earlier and multiplying it by 2 to make a higher octave and dividing by 2 to make a lower octave.")
				.padding()
				.multilineTextAlignment(.center)
			Text("Here I've given every note a name from A to G, and to represent the octave each note is in I put a number after each note's name, so there are 3 A notes, A3, A4 and A5, A4 is an octave higher than A3 and A5 is an octave higher than A4.")
				.padding()
				.multilineTextAlignment(.center)
			Text("There are also notes with a #, that means that note is a little higher than its counterpart without the # (A4 is a little lower than A#4)")
				.padding()
				.multilineTextAlignment(.center)
			Text("The important part is: the notes here are placed in such a way that every note immediately below other note in the picker is that note's fifth.")
				.font(.headline)
				.padding()
				.multilineTextAlignment(.center)
			Text("Now you can see how Pythagorean tuning works in bigger ranges!")
				.font(.headline)
				.padding()
				.multilineTextAlignment(.center)
			
		
			InterfaceP4(sound: $viewModel.sound)
			
			Text("And you can see (or hear if you pay attention) that this system does not work when you try to make bigger ranges")
				.font(.headline)
				.padding()
				.multilineTextAlignment(.center)
			
			Text("And you can see (or hear if you pay attention) that this system does not work when you try to make bigger ranges")
				.font(.headline)
				.padding()
				.multilineTextAlignment(.center)
						
//			NextButton(destination: Screen2(), screenIsActive: $viewModel.presentedScreens.screen4)


		}
		.navigationTitle(Text("Pythagorean comma"))
	}
}

