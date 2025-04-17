//
//  BannerView.swift
//  AppleiPhoneChoose
//
//  Created by Corbin Shanks on 10/2/24.
//

// this was in my contentview but i figured its cleaner to break it down into its own view.
// this is just logic for the top banner

import SwiftUI

struct BannerView: View {
    var body: some View {
        Spacer().frame(height: 15) // top gap
        Rectangle()
            .fill(Color.white) // bg color of the rectangle
            .stroke(Color(.sRGB, red: 0.8, green: 0.8, blue: 0.8, opacity: 1.0), lineWidth: 1) //given
            .frame(height: 50) // ? looks okay
            .overlay(Text("From $999 or $41.62/mo. before trade-in*"))
                .font(.system(size: 16, weight: .regular)) //match style
    }
}
