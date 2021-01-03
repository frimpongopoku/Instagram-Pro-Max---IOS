//
//  StartingPage.swift
//  Instagram Pro Max (iOS)
//
//  Created by frimpongOpokuAgyemang on 03/01/2021.
//

import SwiftUI

struct StartingPage: View {
	var body: some View {
		VStack{
			HeaderBar()
			StoriesHeader()
		}
	}
}



struct StoriesHeader : View {
	var body : some View {
		Text("here it is")
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
