import SwiftUI

struct WaveInterfaceSliders: View {

	@Binding var sound: Sound
	
	var body: some View {
		VStack {
			
			WCSliderView(wave: $sound.waves.waveA)
				.onChange(of: sound.waves) { newValue in
					Synth.shared.setWaves(newValue)
				}
			WCSliderView(wave: $sound.waves.waveB)
				.onChange(of: sound.waves) { newValue in
					Synth.shared.setWaves(newValue)
				}
			WCSliderView(wave: $sound.waves.waveC)
				.onChange(of: sound.waves) { newValue in
					Synth.shared.setWaves(newValue)
				}
		}
		.frame(alignment: .center)
		.preferredColorScheme(.dark)
	}
}

//struct Preview2: PreviewProvider {
//	static var previews: some View {
//		InterfaceP2()
//	}
//}
//
