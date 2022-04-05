
import SwiftUI

public struct WaveView: View {
	
	struct WavePath: Shape {
		let wave: Wave
		let width: CGFloat
				
		func path(in rect: CGRect) -> Path {
			var path = Path()
			
			let relativeTotal: Double = 200
			let height = Double(rect.height)
			let width = Double(rect.width)

			let origin = CGPoint(x: 0, y: height*0.5)
			
			path.move(to: origin)
			for x in stride(from: 0, through: width, by: 1) {
				let angle = x/relativeTotal * 2*Double.pi
				let y = wave.intensity(forAngle: angle) + height*0.5
				
				path.addLine(to: CGPoint(x: x, y: y))
			}
			
			return path
		}
	}
	
	public let wave: Wave
	
	public var body: some View {
		WavePath(wave: wave, width: Sizes.width)
			.stroke(lineWidth: 2)
			.frame(height: wave.maxAmplitude*2)
	}
	
	public init(wave: Wave) {
		self.wave = wave
	}
}
