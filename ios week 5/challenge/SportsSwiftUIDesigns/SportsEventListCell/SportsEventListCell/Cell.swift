//
//  Cell.swift
//  SportsEventListCell
//
//  Created by Corbin Shanks on 9/19/24.
//

import SwiftUI

struct Cell: View {
    var iconName: String
    var game: String
    var gameDate: String
    
    var body: some View {
        HStack {
            Image(iconName)
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .padding(.leading, 15)
            
            VStack(alignment: .leading, spacing: 2) {
                Text(game)
                    .font(.system(size: 15, weight: .regular))
                    .foregroundColor(.black)
                
                Text(gameDate)
                    .font(.system(size: 12, weight: .regular))
                    .foregroundColor(.gray)
            }
                
            Spacer()
                
        }
        .padding(.vertical, 10)
        .background(Color.white)
        .cornerRadius(8)
        .shadow(color: Color.black.opacity(0.1), radius: 2, x: 0, y: 1)
        .padding(.horizontal, 10) //unsure how this will translate when added to a list view
    }
}

//open contentview to see preview
