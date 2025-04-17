//
//  ContentView.swift
//  SportsEventListCell
//
//  Created by Corbin Shanks on 9/18/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Sports Events")
                .font(.system(size: 32, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                .padding(.top)

            //Vstack to house a single cell, will eventually hold the list here
            VStack {
                Cell(
                    iconName: "football",
                    game: "Tennesee vs Missouri",
                    gameDate: "Oct 2, 2021 at 11:30 AM")
            }
            .padding(.top)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

#Preview {
    ContentView()
}
