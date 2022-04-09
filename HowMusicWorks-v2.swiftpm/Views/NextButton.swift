import SwiftUI

struct NextButton<Screen: View>: View {
	
	var destination: Screen
	@Binding var screenIsActive: Bool
	
	var body: some View {
		HStack {
			Spacer()

			Button {
				screenIsActive = true
			} label: {
				Text("Next")
					.font(.title3)
					.foregroundColor(.blue)
			}
			NavigationLink(destination: destination, isActive: $screenIsActive) {
				EmptyView()
			}
		}
		.padding()
	}
}
