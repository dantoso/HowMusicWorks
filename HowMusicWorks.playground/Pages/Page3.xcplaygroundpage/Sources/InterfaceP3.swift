import SwiftUI

public struct InterfaceP3: View {

	@State var sound: Sound
	
	public init() {
		self.sound = Sound(waveA: true, waveB: true, waveC: true)
	}
	
	public var body: some View {
		VStack() {
			
			WavePythagorasPickerView(wave: $sound.waves.waveA)
				.onChange(of: sound.waves) { newValue in
					Synth.shared.waves = newValue
				}
			WavePythagorasPickerView(wave: $sound.waves.waveB)
				.onChange(of: sound.waves) { newValue in
					Synth.shared.waves = newValue
				}
			WavePythagorasPickerView(wave: $sound.waves.waveC)
				.onChange(of: sound.waves) { newValue in
					Synth.shared.waves = newValue
				}
			
			let waveSum = ChordWave(container: sound.waves)
			WaveView(wave: waveSum)
			
			PlayButton(sound: $sound)
			
		}
		.frame(width: Sizes.width, height: Sizes.height, alignment: .center)
		.preferredColorScheme(.dark)
	}
}




