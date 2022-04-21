import SwiftUI

struct WCEqualTempPicker: View {
	@Binding var wave: PureWave
	
	var body: some View {
		VStack(alignment: .leading) {
			Text("\(wave.frequency*100) Hz")
				.padding(.top)
			WaveView(wave: wave)
			EqualTemperedPicker(frequency: $wave.frequency)
				.padding(.bottom)
		}
	}
}
