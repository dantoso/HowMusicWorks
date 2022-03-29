import SwiftUI

public struct InterfaceP1: View {

	@State var sound: Sound
	
	public init() {
		self.sound = Sound(waveA: true, waveB: false, waveC: false)
	}
	
	public var body: some View {
		VStack() {
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
				WaveView(wave: sound.waves.waveA)
					.onChange(of: sound.waves) { newValue in
						Synth.shared.waves = newValue
					}
			}
			
			Text("\(sound.waves.waveA.frequency * 100)")
			
			Slider(value: $sound.waves.waveA.frequency, in: 0...12)
				.frame(width: Sizes.width*0.9)
			
			
		}
		.frame(width: Sizes.width, height: 200, alignment: .center)
		.preferredColorScheme(.dark)
	}
}
