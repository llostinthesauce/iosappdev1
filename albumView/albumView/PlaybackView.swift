//
//  PlaybackView.swift
//  albumView
//
//  Created by Corbin Shanks on 10/23/24.
//

import SwiftUI

struct PlaybackView: View {
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "play.fill")
                    .foregroundColor(.red)
                
                Text("Play")
                    .bold()
                    .foregroundColor(.red)
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 10)
            .background(Color(red: 26/255, green: 26/255, blue: 28/255))
            .cornerRadius(8)
            
            HStack {
                Image(systemName: "shuffle")
                    .foregroundColor(.red)
                
                Text("Shuffle")
                    .bold()
                    .foregroundColor(.red)
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 10)
            .background(Color(red: 26/255, green: 26/255, blue: 28/255)) 
            .cornerRadius(8)
        }
        .padding(.horizontal)
    }
}

#Preview {
    PlaybackView()
}
