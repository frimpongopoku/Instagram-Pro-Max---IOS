//
//  StoryCircle.swift
//  Instagram Pro Max
//
//  Created by frimpongOpokuAgyemang on 03/01/2021.
//

import SwiftUI

struct StoryCircle: View {
	var body: some View {
		ZStack{
			Image("an_avatar")
				.resizable()
				.frame(width:60, height:60)
				.cornerRadius(555555)
				.overlay(
					Circle()
						.stroke(Color.red, lineWidth: 3)
						.frame(width:65, height:65)
				)
			VStack{
				Spacer()
				HStack{
					Spacer()
					Image(systemName:"plus.circle.fill")
						.resizable()
						.renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
						.foregroundColor(.blue)
						.background(Color.white)
						.frame(width:20, height:20)
						.overlay(
							Circle()
								.stroke(lineWidth: 3)
							
						)
				}
			}.frame(width:60, height:50)
		}
	}
	
	
}

struct StoryCircle_Previews: PreviewProvider {
	static var previews: some View {
		StoryCircle()
	}
}
