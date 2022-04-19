import Foundation

struct ScreenContainer {
	var screen2: Bool = false
	var screen3: Bool = false
	var screen4: Bool = false
	var screen5: Bool = false
}

final class ViewModel: ObservableObject {
	@Published var sound = Sound()
	@Published var presentedScreens = ScreenContainer() {
		didSet {
			transitioning()
		}
	}

	init() {
		print("viewmodel apareceu")
	}
	
	deinit {
		print("viewmodel morreu")
	}
	
	func transitioning() {
//		sound.isPlaying = false
//		Synth.shared.volume = 0
//		Synth.shared.resetTime()
		
		print("transition")
		
//		sound.waves = WaveContainer()
	}
}

