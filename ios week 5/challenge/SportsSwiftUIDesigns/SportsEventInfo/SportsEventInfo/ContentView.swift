//
//  ContentView.swift
//  SportsEventInfo
//
//  Created by Corbin Shanks on 9/18/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
    //make a struct for the view so that it can be called in the main app view. I hope this is correct, if not, my general logic can be implemented into a condensed project and views but this seems to be right. My contentview on the views files was bugged so I just used it here
        SportsEventView(
            iconName: "football",
            sportTitle: "football",
            game: "Tennessee vs Missouri",
            gameDate: "October 2, 2021 at 11:30:00 AM",
            image1: "TNvsMO_Oct2_2022",
            image2: "TNvsMO_GameLeaders"
        )
    }
}


#Preview {
    ContentView()
}

