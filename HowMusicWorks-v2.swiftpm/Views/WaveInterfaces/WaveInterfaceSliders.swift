import SwiftUI

struct WaveInterfaceSliders: View {

	@Binding var sound: Sound
	
	var body: some View {
		VStack() {
			
			Group {
				WCSliderView(wave: $sound.waves.waveA)
				WCSliderView(wave: $sound.waves.waveB)
				WCSliderView(wave: $sound.waves.waveC)
			}
			.onChange(of: sound.waves) { newValue in
				Synth.shared.isPicker = false
				Synth.shared.setWaves(newValue)
			}
			
			
//			ScrollView(.horizontal) {
				let waveSum = ChordWave(container: sound.waves)
				WaveView(wave: waveSum)
					.frame(width: .infinity)
					.padding(.top)
					.onChange(of: sound.waves) { newValue in
						Synth.shared.isPicker = false
						Synth.shared.setWaves(newValue)
					}
//			}
			
			PlayButton(sound: $sound)
				.padding(.bottom)
			
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
