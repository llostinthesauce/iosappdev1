//
//  ChooseYourCapacityView.swift
//  AppleiPhoneChoose
//
//  Created by Corbin Shanks on 10/2/24.
//

//will hold 4 blocks of choose your capacity plus title, plus underline info, pass 4 blocks just like in the finish views

import SwiftUI

struct ChooseYourCapacityView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Choose your capacity.") //title text
                .font(.system(size: 24, weight: .bold))
            
            Spacer().frame(height: 5) // top gap, im not sure if this is the best way to do this, probably not? but best I could do for now.
            
            Text("Your current iPhone X is a 64 GB model.")
                .font(.system(size: 14, weight: .regular))
                .foregroundColor(Color(.sRGB, red: 0.5, green: 0.5, blue: 0.5, opacity: 1.0)) // color for alt text
            
            Spacer().frame(height: 5) // mid gap
            
            Text("How much capacity is right for you?")
                .font(.system(size: 14, weight: .regular))
                .foregroundColor(Color(.blue)) // color for blue text
            
            Spacer().frame(height: 30) // bottom gap

            // Instances of CapacityViewItem, in two blocks for each capacity
            HStack {
                CapacityItemView(storage: "128GB", description: "From $999 or $41.62/mo. before trade-in*")
                CapacityItemView(storage: "256GB", description: "From $1099 or $45.79/mo. before trade-in*")
            }
            
            HStack {
                CapacityItemView(storage: "512GB", description: "From $1299 or $54.12/mo. before trade-in*")
                CapacityItemView(storage: "1TB", description: "From $1499 or $62.45/mo. before trade-in*")
            }
            
        }
        .padding()
        .background(Color(.sRGB, red: 0.953, green: 0.953, blue: 0.969, opacity: 1.0)) // Sets the background color
    }
}
