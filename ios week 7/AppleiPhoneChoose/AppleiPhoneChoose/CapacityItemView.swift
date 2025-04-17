//
//  CapacityItemView.swift
//  AppleiPhoneChoose
//
//  Created by Corbin Shanks on 10/2/24.
//
// holds logic for one block of capacity, make it to where I can pass in the text in chooseyourcapview...

import SwiftUI

struct CapacityItemView: View { //takes two strings, one for storage and one for descriptor. Could this be one?
    var storage: String
    var description: String

    init(storage: String, description: String) {
        self.storage = storage
        self.description = description
    }

    var body: some View {
        let superscript = "²" //had to google how to do this. Lol. Declared at high level to avoid issues, could prob be declared lower
        ZStack {
            RoundedRectangle(cornerRadius: 10) //inshallah google : - )
                .fill(Color.white)
                .stroke(Color(.sRGB, red: 0.8, green: 0.8, blue: 0.8, opacity: 1.0), lineWidth: 1) // border color as given
                .frame(width: 175, height: 85)
            
            VStack {
                Text(storage) + Text(superscript) // displays storage with nifty superscript
                    .font(.system(size: 16, weight: .regular))
                
                Text(description) // displays description
                    .font(.system(size: 12, weight: .regular)) //slightly smaller
                    .foregroundColor(Color(.sRGB, red: 0.5, green: 0.5, blue: 0.5, opacity: 1.0)) // color for alt text
                    .multilineTextAlignment(.center) //this one makes not a ton of sense, as i manipulate it, it is not intuitive to me.
            }
        }
        
    }
}
