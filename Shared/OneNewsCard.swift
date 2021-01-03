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
			HStack{
				CircleImage(width:40, height: 40)
					.frame(width:40, height:30)
					.padding()
				Text("Premier League")
					.font(.headline)
				Spacer()
				Image(systemName:"ellipsis")
				
			}.padding()
		}
	}
}

struct OneNewsCard_Previews: PreviewProvider {
	static var previews: some View {
		OneNewsCard()
	}
}
