import SwiftUI

public struct WIWideEqualTemp: View {

	@Binding var sound: Sound
	
	public var body: some View {
		VStack {
			Group {
				EqualTempWidePicker(frequency: $sound.waves.waveA.frequency)
				EqualTempWidePicker(frequency: $sound.waves.waveB.frequency)
				EqualTempWidePicker(frequency: $sound.waves.waveC.frequency)
			}
			.onChange(of: sound.waves) { newValue in
				Synth.shared.setWaves(newValue)
			}

			
		}
		.frame(alignment: .center)
		.preferredColorScheme(.dark)
	}
}

//struct Preview4: PreviewProvider {
//	static var previews: some View {
//		InterfaceP4()
//	}
//}
//

