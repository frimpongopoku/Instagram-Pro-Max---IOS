//
//  OneNewsCard.swift
//  Instagram Pro Max
//
//  Created by frimpongOpokuAgyemang on 03/01/2021.
//

import SwiftUI

struct OneNewsCard: View {
	var body: some View {
		VStack{
			// --- Header Area ---
			HStack{
				CircleImage(width:40, height: 40)
					.frame(width:40, height:30)
					.padding()
				Text("Premier League")
					.font(.headline)
				Spacer()
				Image(systemName:"ellipsis")
				
			
				
			}.frame(height:10)
			.padding()
			// ---- Image Area -----
			Image("1")
				.resizable()
				.scaledToFit()
				.frame(maxWidth:.infinity)
				.frame(height:270)
			//---- Action Buttons Area ---
			
			HStack(spacing:15){
				Image(systemName:"heart")
					.font(.title2)
				Image(systemName:"message")
					.font(.title2)
				Image(systemName:"paperplane")
					.font(.title2)
				Spacer()
				Image(systemName:"bookmark")
					.font(.title2)
				
				
			}.padding([.leading,.trailing])
			
				
		}
	}
}

struct OneNewsCard_Previews: PreviewProvider {
	static var previews: some View {
		OneNewsCard()
	}
}
