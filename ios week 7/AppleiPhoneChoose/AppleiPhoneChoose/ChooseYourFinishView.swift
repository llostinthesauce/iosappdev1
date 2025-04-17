//
//  ChooseYourFinishView.swift
//  AppleiPhoneChoose
//
//  Created by Corbin Shanks on 10/2/24.
//

// will hold 4 or 1 finishitemviews plus the title

import SwiftUI

struct ChooseYourFinishView: View {
    var body: some View {
        VStack(alignment: .leading) { // only way i could get title to left align? Im not sure if this is desirable
            Text("Choose your finish.")
                .font(.system(size: 24, weight: .bold))

            // instances of FinishItemView, in two blocks for each color
            HStack {
                FinishItemView(color: Color(.sRGB, red: 0.694, green: 0.776, blue: 0.851, opacity: 1.0), labelString: "Sierra Blue") //given colors and titles
                FinishItemView(color: Color(.sRGB, red: 0.953, green: 0.957, blue: 0.941, opacity: 1.0), labelString: "Silver")
            }
            
            HStack {
                FinishItemView(color: Color(.sRGB, red: 0.969, green: 0.925, blue: 0.843, opacity: 1.0), labelString: "Gold")
                FinishItemView(color: Color(.sRGB, red: 0.376, green: 0.365, blue: 0.357, opacity: 1.0), labelString: "Graphite")
            }
            
        }
        .padding()
        .background(Color(.sRGB, red: 0.953, green: 0.953, blue: 0.969, opacity: 1.0)) // sets the background color
    }
}
