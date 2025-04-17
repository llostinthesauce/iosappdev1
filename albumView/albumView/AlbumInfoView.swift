//
//  AlbumInfoView.swift
//  albumView
//
//  Created by Corbin Shanks on 10/23/24.
//

import SwiftUI

struct AlbumInfoView: View {
    var body: some View {
        VStack {
            Image("ves")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250, height: 250)
                .cornerRadius(10)
            
            Text("Vespertine")
                .font(.title3)
                .bold()
                .foregroundColor(.white)
            
            Text("Björk")
                .font(.subheadline)
                .foregroundColor(.red)
            
            HStack(spacing: 2) {
                Text("Pop • 2001 •")
                    .font(.caption)
                    .foregroundColor(.gray)

                Image(systemName: "waveform")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 15, height: 15) 
                    .foregroundColor(.gray)

                Text("Lossless")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    AlbumInfoView()
}
