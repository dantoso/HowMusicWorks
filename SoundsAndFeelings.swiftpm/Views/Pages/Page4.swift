import SwiftUI

struct Page4: View {
	
	@Binding var sound: Sound
	@State var showInfo = false
	
	var body: some View {
		
		VStack {
			HStack {
				Button {
					showInfo = true
				} label: {
					Image(systemName: "info.circle")
						.font(Font.system(size: 24))
				}
				Text("Play around!")
					.font(.title)
					.padding(.leading)
				Spacer()
			}
			
			WIWideEqualTemp(sound: $sound)
			
			Spacer()
		}
		.sheet(isPresented: $showInfo, onDismiss: nil) {
			InfoView4()
		}
		
	}
}


struct InfoView4: View {
	var body: some View {
		VStack {
			Text("Play around!")
				.font(.headline)
				.padding()

			Text("\tIn this page you can't see the pure waves that make the resultant, instead, I've increased the range of notes you can play, they are tuned in equal temperament, which is the tuning system we use extensively in western music. This way, you can try to play some chords and tunes here!")
				.padding()
			
			Text("\tA cool detail, the notes in the picker are displayed in such a way that every note immediately below another in the screen is that note's fifth (E5 is the fifth of A4, A4 is the fifth of D4, etc).")
				.padding()
			
			Text("What are these weird symbols??? (C#5, G3, F4)")
				.padding(.bottom)
				.font(.headline)
			
			Text("\tThey represent notes in western music notation, there are 7 different notes represented by alphabet letters (A to G) and we differentiate how high or low they are by numbers after those letters. For example A4 is the octave of A3, F#5 is the octave of F#4.\n\tThere are also sharp notes, they are noted by the # after the letter, so there is an A and an A sharp (A#). Sharp notes are notes a little bit higher pitched than their natural counterparts, so A (A natural) is a bit lower than A# (A sharp). Not all the notes have a sharper \"version\", actually only B and E don't have sharper \"versions\".")
				.padding([.bottom, .leading, .trailing])
			
			Text("\tAnd that's it, it makes me very happy that you got here, hope you had the same fun playing and discovering about sound as I had creating this (I had a lot of fun).")
				.padding()
			
			Text("Thanks! :D")
				.padding()
			Spacer()
		}
	}
}

