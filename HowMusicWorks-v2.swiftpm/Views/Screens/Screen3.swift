import SwiftUI

struct Screen3: View {
	
	@EnvironmentObject var viewModel: ViewModel
	
	var body: some View {
		ScrollView(.vertical, showsIndicators: false) {
			Text("A long long time ago, Pythagoras (a very smart greek dude) noticed that the pitch of a sound was determined by the size of the thing vibrating to produce such sound.")
				.padding()
				.multilineTextAlignment(.center)
			Text("Along with that, he also noticed that when two things, one twice the size of the other, vibrate together, they make a very pleasing sound. In other words when 2 frequencies are played and one of them is double the other, they produce a a pleasing feeling.")
				.padding()
				.multilineTextAlignment(.center)
			Text("When a note's frequency is double the frequency of another, it is said (in western music theory) that this note is an octave above the original.")
				.padding()
				.multilineTextAlignment(.center)
			Text("After he found that out, he started testing other ratios and so he came up with 3 to 2 (a fifth) 5 to 4 (a third) and so on. He kept testing these notes until he came up with 12 different notes. All derived from multiplying an original frequency by these ratios. This original frequency is called the first.")
				.padding()
				.multilineTextAlignment(.center)
			Text("Here you can check out how well these ratios sound together!")
				.padding()
				.multilineTextAlignment(.center)
			
		
			InterfaceP3(sound: $viewModel.sound)
						
			NextButton(destination: Screen2(), screenIsActive: $viewModel.presentedScreens.screen4)


		}
		.navigationTitle(Text("Pythagorean tuning"))
	}
}
