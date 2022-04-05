import SwiftUI

public struct InterfaceP1: View {

	@State var sound: Sound
	
	public init() {
		self.sound = Sound(waveA: true, waveB: false, waveC: false)
	}
	
	public var body: some View {
		VStack() {
			
			Text("\(sound.waves.waveA.frequency * 100) Hz")
			
			WaveView(wave: sound.waves.waveA)
				.onChange(of: sound.waves) { newValue in
					Synth.shared.setWaves(newValue)
				}
			
			PlayButton(sound: $sound)
			
			Slider(value: $sound.waves.waveA.frequency, in: 0...12)
				.onChange(of: sound.waves) { newValue in
					Synth.shared.setWaves(newValue)
				}
			
		}
		.frame(height: 200, alignment: .center)
		.preferredColorScheme(.dark)
	}
}

struct Preview1: PreviewProvider {
	static var previews: some View {
		InterfaceP1()
	}
}
