//
//  ContentView.swift
//  AppleiPhoneChoose
//
//  Created by Corbin Shanks on 10/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            BannerView()
            ChooseYourFinishView()
            ChooseYourCapacityView()
        }
        .background(Color(.sRGB, red: 0.953, green: 0.953, blue: 0.969, opacity: 1.0)) // sets the background color
    }
}

#Preview {
    ContentView()
}
