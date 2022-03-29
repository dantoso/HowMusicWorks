import SwiftUI

public struct InterfaceP2: View {

	@State var sound: Sound
	
	public init() {
		self.sound = Sound(waveA: true, waveB: true, waveC: true)
	}
	
	public var body: some View {
		VStack() {
			
			WaveSliderView(wave: $sound.waves.waveA)
			WaveSliderView(wave: $sound.waves.waveB)
			WaveSliderView(wave: $sound.waves.waveC)
			
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
				let waveSum = ChordWave(container: sound.waves)
				WaveView(wave: waveSum)
					.onChange(of: sound.waves) { newValue in
						Synth.shared.waves = newValue
					}
			}
			
		}
		.frame(width: Sizes.width, height: Sizes.height, alignment: .center)
		.preferredColorScheme(.dark)
	}
}

