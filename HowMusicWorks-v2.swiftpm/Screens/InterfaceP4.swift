import SwiftUI

public struct InterfaceP4: View {

	@State var sound: Sound
	
	public init() {
		self.sound = Sound(waveA: true, waveB: true, waveC: true)
		Synth.shared.isPicker = true
	}
	
	public var body: some View {
		VStack() {
			
			WCPythagoreanCommaPickerView(wave: $sound.waves.waveA)
				.onChange(of: sound.waves) { newValue in
//					Synth.shared.waves = newValue
					Synth.shared.setWaves(newValue)
				}
			WCPythagoreanCommaPickerView(wave: $sound.waves.waveB)
				.onChange(of: sound.waves) { newValue in
//					Synth.shared.waves = newValue
					Synth.shared.setWaves(newValue)
				}
			WCPythagoreanCommaPickerView(wave: $sound.waves.waveC)
				.onChange(of: sound.waves) { newValue in
//					Synth.shared.waves = newValue
					Synth.shared.setWaves(newValue)
				}
			
			let waveSum = ChordWave(container: sound.waves)
			WaveView(wave: waveSum)
			
			PlayButton(sound: $sound)
			
		}
		.frame(alignment: .center)
		.preferredColorScheme(.dark)
	}
}

struct Preview4: PreviewProvider {
	static var previews: some View {
		InterfaceP4()
	}
}


