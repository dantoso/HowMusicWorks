import SwiftUI

public struct InterfaceP2: View {

	@Binding var sound: Sound
	
	public var body: some View {
		VStack() {
			
			WCSliderView(wave: $sound.waves.waveA)
			WCSliderView(wave: $sound.waves.waveB)
			WCSliderView(wave: $sound.waves.waveC)
			
			
			let waveSum = ChordWave(container: sound.waves)
			WaveView(wave: waveSum)
				.padding(.top)
				.onChange(of: sound.waves) { newValue in
					Synth.shared.isPicker = false
					Synth.shared.setWaves(newValue)
				}
			
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
