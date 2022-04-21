import SwiftUI

//WC stands for wave controller

public struct WCSliderView: View {
	@Binding public var wave: PureWave
	
	public var body: some View {
		VStack(alignment: .leading) {
			Text("\(wave.frequency*100) Hz")
				.padding(.top)
			WaveView(wave: wave)
				.padding(.bottom)
			Slider(value: $wave.frequency, in: 0...10)
				.padding([.trailing, .leading])
			
		}
	}
}
