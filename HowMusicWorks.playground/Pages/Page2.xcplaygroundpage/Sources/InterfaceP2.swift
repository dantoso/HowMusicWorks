import SwiftUI

public struct InterfaceP2: View {

	@State var sound: Sound
	
	public init() {
		self.sound = Sound(waveA: true, waveB: true, waveC: true)
	}
	
	public var body: some View {
		VStack() {
			
			WCSliderView(wave: $sound.waves.waveA)
			WCSliderView(wave: $sound.waves.waveB)
			WCSliderView(wave: $sound.waves.waveC)
			
			
			let waveSum = ChordWave(container: sound.waves)
			WaveView(wave: waveSum)
				.onChange(of: sound.waves) { newValue in
					Synth.shared.waves = newValue
				}
			
			PlayButton(sound: $sound)
			
		}
		.frame(width: Sizes.width, height: Sizes.height, alignment: .center)
		.preferredColorScheme(.dark)
	}
}

