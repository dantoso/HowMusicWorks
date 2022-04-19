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
							Synth.shared.isPicker = false
							viewModel.transitioning()
						}
					Screen2()
						.onDisappear {
							Synth.shared.isPicker = false
						}
						.onAppear {
							Synth.shared.isPicker = true
							viewModel.transitioning()
						}
					Screen3()
						.onAppear {
							Synth.shared.isPicker = true
							viewModel.transitioning()
						}
				}
				.tabViewStyle(PageTabViewStyle())
				
				PlayButton(sound: $viewModel.sound)
				
				ScrollView(.horizontal) {
					let waveSum = ChordWave(container: viewModel.sound.waves)
					WaveView(wave: waveSum)
						.frame(width: 4000)
						.padding(.top)
						.onChange(of: viewModel.sound.waves) { newValue in
							Synth.shared.setWaves(newValue)
						}
					
				}
			}
			.preferredColorScheme(.dark)
			.environmentObject(viewModel)
        }
    }
}

