import SwiftUI

public struct InterfaceP1: View {

	@State var sound: Sound
	
	public init() {
		self.sound = Sound(waveA: true, waveB: false, waveC: false)
	}
	
	public var body: some View {
		VStack() {
			
			Text("\(sound.waves.waveA.frequency * 100)")
			
			WaveView(wave: sound.waves.waveA)
				.onChange(of: sound.waves) { newValue in
					Synth.shared.waves = newValue
				}
			
			PlayButton(sound: $sound)
			
			Slider(value: $sound.waves.waveA.frequency, in: 0...12)
				.frame(width: Sizes.width*0.9)
				.onChange(of: sound.waves) { newValue in
					Synth.shared.waves = newValue
				}
			
		}
		.frame(width: Sizes.width, height: 200, alignment: .center)
		.preferredColorScheme(.dark)
	}
}
