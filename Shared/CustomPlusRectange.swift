//
//  CustomPlusRectange.swift
//  Instagram Pro Max
//
//  Created by frimpongOpokuAgyemang on 03/01/2021.
//

import SwiftUI

struct CustomPlusRectange: View {
    var body: some View {
			Image(systemName:"plus")
				.resizable()
				.renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
				.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
				.frame(width:15, height:15)
				.overlay(
					RoundedRectangle(cornerRadius: 7)
						.stroke(Color.blue)
						.frame(width:25, height:25)
					
				)
			
		}
}

struct CustomPlusRectange_Previews: PreviewProvider {
    static var previews: some View {
        CustomPlusRectange()
    }
}
