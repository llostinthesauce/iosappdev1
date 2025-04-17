//
//  FinishItemView.swift
//  AppleiPhoneChoose
//
//  Created by Corbin Shanks on 10/2/24.
//

// will hold for each rectange with a color, will take input to be called meaning, the colors in the chooseyourfinish view

import SwiftUI

struct FinishItemView: View { //takes the Color and the description as a value to be passed in the next view
    var color: Color
    var labelString: String

    init(color: Color, labelString: String) {
        self.color = color
        self.labelString = labelString
    }

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .stroke(Color(.sRGB, red: 0.8, green: 0.8, blue: 0.8, opacity: 1.0), lineWidth: 1) // border color as given
                .frame(width: 175, height: 85)
            
            VStack {
                Circle()
                    .stroke(Color(.sRGB, red: 0.8, green: 0.8, blue: 0.8, opacity: 1.0)) //border color as given
                    .fill(color)
                    .frame(width: 21, height: 21)
                
                Text(labelString)
                    .font(.system(size: 16, weight: .regular)) //did my best to match fonts?
            }
        }
        
    }
}
