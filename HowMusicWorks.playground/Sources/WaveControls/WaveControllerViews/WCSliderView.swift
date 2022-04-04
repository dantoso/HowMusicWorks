import SwiftUI

//WC stands for wave controller

public struct WCSliderView: View {
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
			Slider(value: $wave.frequency, in: 0...10)
				.frame(width: Sizes.width*0.9)
			
		}
	}
}
