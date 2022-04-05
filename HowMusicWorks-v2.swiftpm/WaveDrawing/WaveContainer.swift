import Foundation

public struct Sound: Equatable {
	public var isPlaying: Bool = false
	public var waves: WaveContainer = WaveContainer()
	
	public init() {
		self.isPlaying = false
		self.waves = WaveContainer()
	}
	
	public init(waveA: Bool, waveB: Bool, waveC: Bool) {
		self.isPlaying = false
		self.waves = WaveContainer(waveA: waveA, waveB: waveB, waveC: waveC)
	}
}

public struct WaveContainer: Equatable {
	public var waveA: PureWave
	public var waveB: PureWave
	public var waveC: PureWave
	
	public init() {
		waveA = PureWave()
		waveB = PureWave()
		waveC = PureWave()
	}
	
	public init(waveA: Bool, waveB: Bool, waveC: Bool) {
		self.waveA = waveA ? PureWave() : PureWave(frequency: 0, maxAmplitude: 0)
		self.waveB = waveB ? PureWave() : PureWave(frequency: 0, maxAmplitude: 0)
		self.waveC = waveC ? PureWave() : PureWave(frequency: 0, maxAmplitude: 0)
	}
	
}
