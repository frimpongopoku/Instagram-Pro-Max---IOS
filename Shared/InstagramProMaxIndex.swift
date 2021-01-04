
//  Created by frimpongOpokuAgyemang on 31/12/2020.
//

import SwiftUI

struct InstagramProMaxIndex: View {
	var body: some View {
		NavigationView{
			VStack {
				StartingPage()
			}.navigationBarItems(leading: (HeaderBar(leading:true)), trailing: HeaderBar(leading: false))
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		InstagramProMaxIndex()
	}
}
