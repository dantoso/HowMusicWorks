
import SwiftUI


public struct Sound: Equatable {
	public var isPlaying: Bool = false
	public var waves: WaveContainer = WaveContainer()
	
	public init() {
		self.isPlaying = false
		self.waves = WaveContainer()
	}
}

public struct WaveContainer: Equatable {
	public var waveA: PureWave = PureWave()
	public var waveB: PureWave = PureWave()
	public var waveC: PureWave = PureWave()
}


public struct WaveView: View {
	
	struct WavePath: Shape {
		let wave: Wave
		
		func path(in rect: CGRect) -> Path {
			let path = wave.drawPath(in: rect)
			return Path(path.cgPath)
		}
	}
	
	public let wave: Wave
	
	public var body: some View {
		WavePath(wave: wave)
			.stroke(lineWidth: 2)
			.frame(height: wave.maxAmplitude*2)
	}
	
	public init(wave: Wave) {
		self.wave = wave
	}
}


public struct WaveControllerView: View {
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

public struct PythagorasNotePicker: View {
	
	@Binding var frequency: Double
	
	public var body: some View {
		VStack {
			Picker("Major scale", selection: $frequency) {
				Text("first").tag(PythagorasTuning.homeNote)
				Text("second").tag(PythagorasTuning.second)
				Text("third").tag(PythagorasTuning.third)
				Text("fourth").tag(PythagorasTuning.fourth)
				Text("fifth").tag(PythagorasTuning.fifth)
				Text("sixth").tag(PythagorasTuning.sixth)
				Text("seventh").tag(PythagorasTuning.seventh)
				Text("octave").tag(PythagorasTuning.eighth)
			}
			.pickerStyle(.segmented)
			
			Picker("Other intervals", selection: $frequency) {
				Text("minor second").tag(PythagorasTuning.minorSecond)
				Text("minor third").tag(PythagorasTuning.minorThird)
				Text("minor fifth").tag(PythagorasTuning.minorFifth)
				Text("minor sixth").tag(PythagorasTuning.minorSixth)
				Text("minor seventh").tag(PythagorasTuning.minorSeventh)
			}
			.pickerStyle(.segmented)

		}
	}
}
