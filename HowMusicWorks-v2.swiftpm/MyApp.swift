import SwiftUI

@main
struct MyApp: App {
	
	@StateObject var viewModel = ViewModel()
	
	init() {
		Synth.shared.start()
	}
	
    var body: some Scene {
        WindowGroup {
			VStack {
				TabView {
					Screen1()
						.onAppear {
							viewModel.transitioning()
						}
					Screen2()
						.onAppear {
							viewModel.transitioning()
						}
					Screen3()
						.onAppear {
							viewModel.transitioning()
						}
				}
				.tabViewStyle(PageTabViewStyle())
				
//				ScrollView(.horizontal) {
					let waveSum = ChordWave(container: viewModel.sound.waves)
					WaveView(wave: waveSum)
//						.frame(width: 2000)
						.padding(.top)
						.onChange(of: viewModel.sound.waves) { newValue in
							Synth.shared.isPicker = false
							Synth.shared.setWaves(newValue)
						}
					
//				}
				
				PlayButton(sound: $viewModel.sound)
			}
			.preferredColorScheme(.dark)
			.environmentObject(viewModel)
        }
    }
}

