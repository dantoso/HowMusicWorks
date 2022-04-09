import SwiftUI


struct Screen4: View {
	
	@EnvironmentObject var viewModel: ViewModel
	
	var body: some View {
		ScrollView(.vertical, showsIndicators: false) {
			Text("Well, Pythagoras' tuning system seems to work very well... and that's true... to an extent.")
				.padding()
				.multilineTextAlignment(.center)
			Text("You'll see that now I've increased the range of notes you can play by following this rule of taking every note we calculated earlier and multiplying it by 2 to make a higher octave and dividing by 2 to make a lower octave.")
				.padding()
				.multilineTextAlignment(.center)
			Text("Here I've given every note a name following western music notation, if you're not familiar that's not a problem, the important part is:")
				.padding()
				.multilineTextAlignment(.center)
			Text("The notes here are placed in such a way that every note immediately below other note in the picker is that note's fifth.")
				.font(.headline)
				.padding()
				.multilineTextAlignment(.center)
			Text("Now try to play some fifths to hear what they sound like and see how the waveform of the fifth varies!")
				.font(.headline)
				.padding()
				.multilineTextAlignment(.center)
			
		
			InterfaceP4(sound: $viewModel.sound)
			Group {
				Text("Well a fifth is defined by the ratio of 3/2 (or 1.5), so it is expected that every fifth you play here will follow this ratio. Which is not the case.")
					.font(.headline)
								
				Text("If you keep playing fifths, you will probably notice that most fifths sound different from each other, and you can also see that in the resultant wave that is drawn below the 2 pure waves.")
				
				Text("When playing the same intervals the waveform should look the same, (as they should sound the same), the only difference should be in the wavelength.")
				
				Text("That is not the case because of a concpet called the Pythagorean comma, I'm not going to get into the details here, but in summary, that means that in Pythagoras' tuning system it is impossible to play some intervals without sounding terribly bad.")
				
				Text("So that means there are certain intervals that should never be played and our music must keep simple and not venture into these more complex intervals???")
				
				Text("If you listen to music at this day and age you probably know that is not the case, so what is the trick we use to solve Pythagorean comma?")
			}
			.padding()
			.multilineTextAlignment(.center)
						
			NextButton(destination: Screen5(), screenIsActive: $viewModel.presentedScreens.screen5)


		}
		.navigationTitle(Text("Pythagorean comma"))
	}
}

