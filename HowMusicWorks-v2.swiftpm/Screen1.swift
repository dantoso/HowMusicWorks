import SwiftUI

struct Screen1: View {
	
	@ObservedObject var viewModel = ViewModel()
	
    var body: some View {
		NavigationView {
			Form {
				
				Section {
					Text("Welcome to my app, here I'll be trying to explain how music notes work. In other words, how sound waves make us feel things!")
						.padding()
						.multilineTextAlignment(.center)
					
					Text("In this screen you will be able to toy with a sound wave.")
						.padding()
						.multilineTextAlignment(.center)
					
					Text("First lower the volume of your device, if when you press play the volume is too low, gradually raise it to a volume you find comfortable.")
						.font(Font.headline)
						.padding()
						.multilineTextAlignment(.center)
				}
				
				Text("Once you're ready press play and start moving the slider around!")
					.padding()
					.multilineTextAlignment(.center)
				
				InterfaceP1(sound: $viewModel.sound)
				
				Text("Try to notice that just letting the slider sit still probably doesn't make you feel anything, but if you move it around it probably does!")
					.padding()
					.multilineTextAlignment(.center)
				
				Text("That's because a certain sound only makes us feel if this sound is inserted in a context.\nIn other words, what a certain sound sounds like in relation to other sounds is what makes us feel things! (yes it is kind of confusing).")
					.padding()
					.multilineTextAlignment(.center)
				
				Section {
					NavigationLink(destination: Screen2(),
								   tag: .second,
								   selection: $viewModel.presentedScreen) {
						Spacer()
						Text("Next")
							.font(.headline)
							.foregroundColor(.blue)
					}

				}
				
			}
			.navigationTitle(Text("Sound and Feelings"))
		}
		.environmentObject(viewModel)
		.navigationViewStyle(.stack)
    }
}
