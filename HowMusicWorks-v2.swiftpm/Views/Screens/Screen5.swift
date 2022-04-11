import SwiftUI

struct Screen5: View {
	
	@EnvironmentObject var viewModel: ViewModel
	
	var body: some View {
		ScrollView(.vertical, showsIndicators: false) {
			Group {
				Text("In pythagorean tuning, all the 12 notes in an octave are not equally separated and that generates the pythagorean comma. So to solve it, just make it so all 12 notes in an octave are equally separated.")
				
				Text("This way, the only harmonic interval is the octave, so the octave is twice the frequency of the original, and to calculate all the other notes in between, you use the 12√2, because 12√2 to the power of 12 equals 2, so multiplying the original by 12√2 12 times equals the octave.")
				
				Text("This way, you make a range of 12 notes, each one of them equally spaced from the next. This way no matter the range all intervals will sound exactly the same, the problem is that the only harmonic interval is the octave, making the others slightly out of tune.")
				
				Text("Luckily, our ears don't really care about it. So after hundreds of years playing in equal temperament, we taught our ears to listen to equal temperament as in tune.")
			}
			.padding()
			.multilineTextAlignment(.center)
			
			InterfaceP5(sound: $viewModel.sound)

		}
		.navigationTitle(Text("Equal temperament"))
	}
}
