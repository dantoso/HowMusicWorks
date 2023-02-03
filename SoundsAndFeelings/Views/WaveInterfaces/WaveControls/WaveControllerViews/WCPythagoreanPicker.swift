import SwiftUI

//WC stands for wave controller

struct WCPythagorasPickerView: View {
	@Binding var wave: PureWave
	
	var body: some View {
		VStack(alignment: .leading) {
			Text("\(wave.frequency*100) Hz")
				.padding([.top, .leading])
			WaveView(wave: wave)
			PythagorasNotePicker(frequency: $wave.frequency)
				.padding(.bottom)
			
		}
	}
}
