import SwiftUI

struct Playing2Screen: View {
	
	@EnvironmentObject var viewModel: ViewModel
	
	var body: some View {
		NavigationView {
			List {
				Section {
					Text("What if we played 2 or more sounds at the same time? Great question!")
						.padding()
						.multilineTextAlignment(.center)
					Text("Here you can control 3 waves that are played at the same time, you can set a wave's frequency 0 to stop to listening to it, making possible to listen to only 1 or 2 waves.")
						.padding()
						.multilineTextAlignment(.center)
					Text("Try it out! (it's really cool)")
						.font(Font.headline)
						.padding()
						.multilineTextAlignment(.center)
					
				}
				Section {
					InterfaceP2(sound: $viewModel.sound)
					
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
					
					NavigationLink(destination: PythTuningScreen(),
								   tag: .third,
								   selection: $viewModel.presentedScreen) {
						Spacer()
						Text("Next")
							.font(.headline)
							.foregroundColor(.blue)
					}


				}
			}
			.navigationTitle(Text("Playing 2 sounds at the same time"))
		}
		.navigationViewStyle(.stack)
	}
}
