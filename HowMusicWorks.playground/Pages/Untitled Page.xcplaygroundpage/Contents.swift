
import SwiftUI
import PlaygroundSupport

struct Interface: View {

	@State var sound: Sound = Sound()
	
	var body: some View {
		VStack {
			WaveControllerView(wave: $sound.waves.waveA)
				.onChange(of: sound.waves) { newValue in
					Synth.shared.waves = newValue
				}
			WaveControllerView(wave: $sound.waves.waveB)
				.onChange(of: sound.waves) { newValue in
					Synth.shared.waves = newValue
				}
			WaveControllerView(wave: $sound.waves.waveC)
				.onChange(of: sound.waves) { newValue in
					Synth.shared.waves = newValue
				}
			Button {
				sound.isPlaying.toggle()
				if sound.isPlaying {
					Synth.shared.waves = sound.waves
					Synth.shared.volume = 0.2
				}
				else {
					Synth.shared.volume = 0
				}
			} label: {
				WaveView(wave: ChordWave(container: sound.waves))
					.padding([.top], 25)
			}
		}
		.onChange(of: sound.waves) { newValue in
			Synth.shared.waves = newValue
		}
		.frame(width: Sizes.width, height: Sizes.height, alignment: .center)
		.preferredColorScheme(.dark)
	}
}

PlaygroundPage.current.setLiveView(Interface())
