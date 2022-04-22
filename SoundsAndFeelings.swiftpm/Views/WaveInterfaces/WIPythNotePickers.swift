import SwiftUI

//WI stands for Wave Interface
struct WIPythNotePickers: View {

	@Binding var sound: Sound
	
	var body: some View {
		VStack {
			
			WCPythagorasPickerView(wave: $sound.waves.waveA)
				.onChange(of: sound.waves) { newValue in
					Synth.shared.setWaves(newValue)
				}
			WCPythagorasPickerView(wave: $sound.waves.waveB)
				.onChange(of: sound.waves) { newValue in
					Synth.shared.setWaves(newValue)
				}
			WCPythagorasPickerView(wave: $sound.waves.waveC)
				.onChange(of: sound.waves) { newValue in
					Synth.shared.setWaves(newValue)
				}
			
		}
		.frame(alignment: .center)
	}
}

//
//struct Preview3: PreviewProvider {
//	static var previews: some View {
//		InterfaceP3()
//	}
//}


