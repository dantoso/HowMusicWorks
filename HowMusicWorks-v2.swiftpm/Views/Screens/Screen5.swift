import SwiftUI

struct Screen5: View {
	
	@EnvironmentObject var viewModel: ViewModel
	
	var body: some View {
		ScrollView(.vertical, showsIndicators: false) {
			
			Text("screen 5")

		}
		.navigationTitle(Text("Equal temperament"))
	}
}
