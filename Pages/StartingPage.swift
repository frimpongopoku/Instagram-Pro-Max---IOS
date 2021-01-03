
//  Created by frimpongOpokuAgyemang on 03/01/2021.
//

import SwiftUI

struct StartingPage: View {
	var body: some View {
		VStack{
			HeaderBar()
			ScrollView {
				StoriesHeader().padding()
				Divider()
				ForEach(1...10, id: \.self){ _ in
					OneNewsCard()
					Divider().padding(5)
					
				}
			}
		
		}
	}
}



struct StoriesHeader : View {
	var body : some View {
		ScrollView(.horizontal, showsIndicators: false){
			HStack(spacing: 15){
				StoryCircle(cardType: StoryCircle.add).padding(.leading,10)
				ForEach(1...7, id :\.self){_ in
					StoryCircle()
				}
			}.frame(height:70)
		}
		
	}
}


struct HeaderBar : View {
	var body : some View {
		
		// --- Header Area ----
		HStack{
			Text("Instagram")
				.font(Font.custom("InstagramLogoFont", size: 24))
			Spacer()
			HStack(spacing:30){
				CustomPlusRectange()
				Image(systemName:"heart")
					.resizable()
					.renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
					.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
					.frame(width:26, height:26)
				
				Image(systemName:"paperplane")
					.resizable()
					.renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
					.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
					.frame(width:26, height:26)
				
			}
			
		}.padding()
		
	}
}
struct StartingPage_Previews: PreviewProvider {
	static var previews: some View {
		StartingPage()
	}
}
