//
//  SplashScreen.swift
//  Instagram Pro Max (iOS)
//
//  Created by frimpongOpokuAgyemang on 04/01/2021.
//

import SwiftUI

struct SplashScreen: View {
	@State var  startApp = false
	var body: some View {
		
		if( !startApp){
			ZStack{
				Color("launchWhite")
					.frame(maxWidth: .infinity, maxHeight:.infinity)
				VStack{
					Image("insta-logo")
						.resizable()
						.frame(width:100, height:100)
						.onAppear(){
							DispatchQueue.main.asyncAfter(deadline: .now() + 2){
								startApp.toggle()
							}
						}
				}}.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
		}else{
			NavigationView{
				VStack {
					StartingPage()
				}.navigationBarItems(leading: (HeaderBar(leading:true)), trailing: HeaderBar(leading: false))
				
			}
			
		}
		
		
	}
}

struct SplashScreen_Previews: PreviewProvider {
	static var previews: some View {
		SplashScreen()
	}
}
