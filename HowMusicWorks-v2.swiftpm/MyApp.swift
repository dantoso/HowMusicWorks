import SwiftUI

@main
struct MyApp: App {
	
	@StateObject var viewModel = ViewModel()
	
	init() {
		Synth.shared.start()
	}
	
    var body: some Scene {
        WindowGroup {
			TabView {
				Screen1()
					.onAppear {
						viewModel.transitioning()
					}
				Screen2()
					.onAppear {
						viewModel.transitioning()
					}
			}
			.preferredColorScheme(.dark)
			.environmentObject(viewModel)
			.tabViewStyle(PageTabViewStyle())
        }
    }
}

