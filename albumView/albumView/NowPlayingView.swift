//
//  NowPlayingView.swift
//  albumView
//
//  Created by Corbin Shanks on 10/23/24.
//

import SwiftUI

struct NowPlayingView: View {
    var body: some View {
        HStack {
            Image("ves")
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(5)

            VStack(alignment: .leading) {
                Text("Frosti")
                    .foregroundColor(.white)
                    .font(.body)
            }

            Spacer()

            Image(systemName: "pause.fill")
                .foregroundColor(.white)
                .padding()

            Image(systemName: "forward.fill")
                .foregroundColor(.white)
                .padding()
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        .background(Color(red: 26/255, green: 26/255, blue: 28/255))
        .cornerRadius(15) 
    }
}

#Preview {
    NowPlayingView()
}
