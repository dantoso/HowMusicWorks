import SwiftUI

//WI stands for Wave Interface
struct WIEqualTempPickers: View {

	@Binding var sound: Sound
	
	var body: some View {
		VStack {
			
			WCEqualTempPicker(wave: $sound.waves.waveA)
				.onChange(of: sound.waves) { newValue in
					Synth.shared.setWaves(newValue)
				}
			WCEqualTempPicker(wave: $sound.waves.waveB)
				.onChange(of: sound.waves) { newValue in
					Synth.shared.setWaves(newValue)
				}
			WCEqualTempPicker(wave: $sound.waves.waveC)
				.onChange(of: sound.waves) { newValue in
					Synth.shared.setWaves(newValue)
				}
			
		}
		.frame(alignment: .center)
	}
}


