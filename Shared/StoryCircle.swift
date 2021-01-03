
//  Created by frimpongOpokuAgyemang on 03/01/2021.
//

import SwiftUI

struct StoryCircle: View {
	
	static let normal  = "type2"
	static let add =  "type1"
	var cardType : String  = StoryCircle.normal
	var body: some View {
		ZStack{
			if( cardType == "type1"){
				CircleImage()
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
				
			}else if ( cardType == "type2"){
				CircleImage()
			}
		}
	}
	
	
}

//------ Circle Image ------
struct CircleImage : View {
	var width = 60.0
	var height = 60.0
	var  body : some View {
		
		Image("an_avatar")
			.resizable()
			.frame(width:CGFloat(width), height:CGFloat(height))
			.cornerRadius(555555)
			.overlay(
				Circle()
					.stroke(Color.red, lineWidth: 3)
					.frame(width:CGFloat(width + 5), height:CGFloat(height + 5))
			)
		
		
	}
}

struct StoryCircle_Previews: PreviewProvider {
	static var previews: some View {
		StoryCircle()
	}
}
