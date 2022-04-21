import SwiftUI

@main
struct MyApp: App {
	
	@StateObject var viewModel = ViewModel()
	
	init() {
		Synth.shared.start()
	}
	
    var body: some Scene {
        WindowGroup {
			
			GeometryReader { geometry in
				VStack(spacing: 0) {
					
					Spacer(minLength: geometry.size.height*0.04)
					
					ResultantWave()
					
					Pages()
				}
				.environmentObject(viewModel)
//				.preferredColorScheme(.dark)
			}
			
        }
    }
}

struct Pages: View {
	
	@EnvironmentObject var viewModel: ViewModel
	
	var body: some View {
		TabView {
			Page1()
				.onAppear {
					Synth.shared.isPicker = false
					viewModel.transitioning()
				}
			Page2()
				.onDisappear {
					Synth.shared.isPicker = false
				}
				.onAppear {
					Synth.shared.isPicker = true
					viewModel.transitioning()
				}
			Page3()
				.onAppear {
					Synth.shared.isPicker = true
					viewModel.transitioning()
				}
			Page4()
				.onAppear {
					Synth.shared.isPicker = true
					viewModel.transitioning()
				}
		}
		.tabViewStyle(PageTabViewStyle())
	}
}

struct ResultantWave: View {

	@EnvironmentObject var viewModel: ViewModel

	var body: some View {
		VStack {
			
			ScrollView(.horizontal) {
				let waveSum = ChordWave(container: viewModel.sound.waves)
				WaveView(wave: waveSum)
					.frame(width: 4000)
					.padding(.top)
					.onChange(of: viewModel.sound.waves) { newValue in
						Synth.shared.setWaves(newValue)
					}
			}
			
			PlayButton(sound: $viewModel.sound)
				.padding(.top)
			
		}
	}
}
