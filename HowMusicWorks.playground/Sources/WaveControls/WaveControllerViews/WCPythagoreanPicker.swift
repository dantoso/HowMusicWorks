import SwiftUI

//WC stands for wave controller

public struct WCPythagorasPickerView: View {
	@Binding public var wave: PureWave
	
	public init(wave: Binding<PureWave>) {
		self._wave = wave
	}
	
	public var body: some View {
		VStack(alignment: .leading) {
			Text("\(wave.frequency*100) Hz")
				.padding(.top)
			WaveView(wave: wave)
				.padding(.bottom)
			PythagorasNotePicker(frequency: $wave.frequency)
			
		}
	}
}

public struct WCPythagoreanCommaPickerView: View {
	@Binding public var wave: PureWave
	
	public init(wave: Binding<PureWave>) {
		self._wave = wave
	}
	
	public var body: some View {
		VStack(alignment: .leading) {
			Text("\(wave.frequency*100) Hz")
				.padding(.top)
			WaveView(wave: wave)
				.padding(.bottom)
			PythagoreanCommaNotePicker(frequency: $wave.frequency)
			
		}
	}
}
