//
//  TracklistView.swift
//  albumView
//
//  Created by Corbin Shanks on 10/23/24.
//

import SwiftUI

struct TracklistView: View {
    let tracks = [
        "Hidden Place",
        "Cocoon",
        "It's Not Up to You",
        "Undo",
        "Pagan Poetry",
        "Frosti",
        "Aurora",
        "An Echo, a Stain",
        "Sun In My Mouth",
        "Heirloom",
        "Harm of Will",
        "Unison"
    ]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 15) {
                ForEach(tracks.indices, id: \.self) { index in
                    HStack {
                        Text("\(index + 1)")
                            .foregroundColor(.gray)
                            .frame(width: 30, alignment: .leading)
                        
                        Text(tracks[index])
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        Image(systemName: "ellipsis")
                            .foregroundColor(.gray)
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 5)
                }
            }
            .padding(.top)
        }
        .background(Color.black)
        .navigationTitle("Tracklist") 
    }
}

#Preview {
    TracklistView()
}
