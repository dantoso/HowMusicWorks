import SwiftUI

public struct InterfaceP2: View {

	@State var sound: Sound
	
	public init() {
		self.sound = Sound(waveA: true, waveB: true, waveC: true)
		Synth.shared.isPicker = false
	}
	
	public var body: some View {
		VStack() {
			
			WCSliderView(wave: $sound.waves.waveA)
			WCSliderView(wave: $sound.waves.waveB)
			WCSliderView(wave: $sound.waves.waveC)
			
			
			let waveSum = ChordWave(container: sound.waves)
			WaveView(wave: waveSum)
				.onChange(of: sound.waves) { newValue in
					Synth.shared.setWaves(newValue)
				}
			
			PlayButton(sound: $sound)
			
		}
		.frame(alignment: .center)
		.preferredColorScheme(.dark)
	}
}

