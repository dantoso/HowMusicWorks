import SwiftUI

struct Screen1: View {
	
	@EnvironmentObject var viewModel: ViewModel
	@State var showInfo = false
	
	var body: some View {
		VStack {
			HStack {
				Button {
					showInfo = true
				} label: {
					Image(systemName: "info.circle")
				}
				Spacer()
			}
			
			InterfaceP2(sound: $viewModel.sound)
			
		}
		.popover(isPresented: $showInfo) {
			InfoView()
		}
		
	}
	
}

struct InfoView: View {
	var body: some View {
		ScrollView(.vertical) {
			Text("Sounds and feelings")
				.font(.headline)
				.padding()
			
			Text("rhhdshgd")
				.padding()


		}
	}
}

//struct MyPreviewProvider_Previews: PreviewProvider {
//	static var previews: some View {
//		Screen1()
//			.environmentObject(ViewModel())
//	}
//}

