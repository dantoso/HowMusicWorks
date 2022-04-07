import SwiftUI

struct PythTuningScreen: View {
	
	@EnvironmentObject var viewModel: ViewModel
	
	var body: some View {
		NavigationView {
			List {
				Section {
					Text("A long long time ago, Pythagoras (a very smart greek dude) noticed that the pitch of a sound was determined by the size of the thing vibrating to produce such sound.")
						.padding()
						.multilineTextAlignment(.center)
					Text("Along with that, he also noticed that when two things, one twice the size of the other, vibrate together, they make a very pleasing sound.")
						.padding()
						.multilineTextAlignment(.center)
					Text("When a note's frequency is double the frequency of another, it is said (in western music theory) that this note is an octave above the original.")
						.padding()
						.multilineTextAlignment(.center)
					Text("After he found that out, he started testing other ratios and so he came up with 3 to 2 (a fifth) 5 to 4 (a third) and so on. He kept testing these notes until he came up with 12 different notes. All derived from multiplying an original frequency by these ratios. This original frequency is called the first.")
						.padding()
						.multilineTextAlignment(.center)
					Text("Here you can check out how all of these ratios sound together!")
						.padding()
						.multilineTextAlignment(.center)
					
				}
				Section {
					InterfaceP3(sound: $viewModel.sound)
					
					Text("The guy who figured tuning out was Pythagoras. He noticed that certain ratios of frequencies sounded really good.")
						.padding()
						.multilineTextAlignment(.center)
					Text("In the next page I'll show you how he did that, but before you go, try to see if you can find some nice sounding ratios.")
						.padding()
						.multilineTextAlignment(.center)
					Text("A little hint: start with only 2 waves, one double the frequency of the other and go from there!")
						.font(Font.headline)
						.padding()
						.multilineTextAlignment(.center)
				}
								
				Section {
					
					NavigationLink(destination: IntroScreen(),
								   tag: .fourth,
								   selection: $viewModel.presentedScreen) {
						Spacer()
						Text("Next")
							.font(.headline)
							.foregroundColor(.blue)
					}


				}
			}
			.navigationTitle(Text("Pythagorean tuning"))
		}
		.navigationViewStyle(.stack)
	}
}
