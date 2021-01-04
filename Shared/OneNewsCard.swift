//
//  OneNewsCard.swift
//  Instagram Pro Max
//
//  Created by frimpongOpokuAgyemang on 03/01/2021.
//

import SwiftUI

struct OneNewsCard: View {
	@State var liked  = false
	@State var showLiked = false
	var body: some View {
		VStack{
			// --- Header Area ---
			HStack{
				CircleImage(width:30, height: 30)
					.frame(width:40, height:30)
					.padding(10)
				Text("Premier League")
					.font(.system(size:14))
					.fontWeight(.semibold)
				Spacer()
				Image(systemName:"ellipsis")
					.padding()
			}.frame(height:10)
			.padding([.top,.bottom])
			// ---- Image Area -----
			ZStack{
				Image("1")
					.resizable()
					.scaledToFill()
					.frame(maxWidth:.infinity)
					.frame(height:240)
					.onTapGesture(count: 2) {
						self.liked.toggle()
						self.showLiked = true
					}
				if(liked && showLiked){
					Image(systemName:"heart.fill")
						.resizable()
						.renderingMode(.template)
						.foregroundColor(.red)
						.shadow(radius: 20 )
						.frame(width:80, height:80)
						.onAppear(){
							DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) { // Change
								self.showLiked = false
							}
						}
				}
			}
			//---- Action Buttons Area ---
			
			HStack(spacing:15){
				Image(systemName:liked ? "heart.fill" : "heart")
					.renderingMode(.template)
					.foregroundColor( self.liked ? Color.red : Color.black)
					.font(.title2)
					.padding(.leading,10)
					.onTapGesture {
						liked.toggle()
						showLiked.toggle()
					}
				Image(systemName:"message")
					.font(.title2)
				Image(systemName:"paperplane")
					.font(.title2)
				Spacer()
				Image(systemName:"bookmark")
					.font(.title2)
					.padding(.trailing)
				
				
			}.padding([.leading,.trailing,.top],6)
			
			
		}
	}
}

struct OneNewsCard_Previews: PreviewProvider {
	static var previews: some View {
		OneNewsCard()
	}
}
