import Foundation

enum Screens: String, Identifiable {
	var id: String {self.rawValue}
	
	case first, second, third, fourth, fifth
}


final class ViewModel: ObservableObject {
	@Published var sound = Sound(waveA: true, waveB: false, waveC: false)
	@Published var presentedScreen: Screens? = nil {
		didSet {
			transition(from: oldValue)
		}
	}
	
	func transition(from oldView: Screens?) {
		print("transitioning")
		sound.isPlaying = false
		Synth.shared.volume = 0
		
		switch presentedScreen {
		case .first, nil:
			sound.waves = WaveContainer(waveA: true, waveB: false, waveC: false)
		case .fourth:
			sound.waves = WaveContainer(waveA: true, waveB: true, waveC: false)
		default:
			sound.waves = WaveContainer()
		}
	}
}

