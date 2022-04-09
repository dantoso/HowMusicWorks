import SwiftUI

@main
struct MyApp: App {
	
	@StateObject var viewModel = ViewModel()
	
	init() {
		Synth.shared.start()
	}
	
    var body: some Scene {
        WindowGroup {
			NavigationView {
				Screen1()
					.preferredColorScheme(.dark)
			}
			.environmentObject(viewModel)
			.navigationViewStyle(.stack)
        }
    }
}

