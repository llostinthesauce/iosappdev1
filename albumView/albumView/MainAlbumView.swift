//
//  MainAlbumView.swift
//  albumView
//
//  Created by Corbin Shanks on 10/23/24.
//

import SwiftUI

struct MainAlbumView: View {
    var body: some View {
        VStack(spacing: 0) {
            HeaderView()
                .padding(.bottom, 16)
            ScrollView {
                VStack(spacing: 16) {
                    AlbumInfoView()
                    PlaybackView()
                    TracklistView()
                }
                .background(Color.black.edgesIgnoringSafeArea(.all))
            }
            NowPlayingView()
            BottomBarView()
        }
        .background(Color.black) 
    }
}

#Preview {
    MainAlbumView()
}
