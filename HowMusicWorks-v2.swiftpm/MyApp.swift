import SwiftUI

@main
struct MyApp: App {
	
	@ObservedObject var viewModel = ViewModel()
	
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

