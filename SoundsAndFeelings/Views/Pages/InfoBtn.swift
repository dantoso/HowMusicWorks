import SwiftUI

struct InfoBtn: View {
	
	@Binding var showInfo: Bool
	
	var body: some View {
		Button {
			showInfo = true
		} label: {
			Image(systemName: "info.circle")
				.font(Font.system(size: 24))
		}
		.padding(.leading)
		
	}
}

struct PageTitle: View {
	
	let title: String
	
	var body: some View {
		Text(title)
			.font(.title)
			.padding(.leading)
	}
}
