import SwiftUI

struct Screen2: View {
	
	@EnvironmentObject var viewModel: ViewModel
	
	var body: some View {
		NavigationView {
			ScrollView(.vertical) {
				
				InterfaceP4(sound: $viewModel.sound)
				
			}
			.navigationTitle(Text("Playing 2 sounds at the same time"))
		}
		.navigationViewStyle(.stack)
	}
}
