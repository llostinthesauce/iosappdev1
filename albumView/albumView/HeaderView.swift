//
//  HeaderView.swift
//  albumView
//
//  Created by Corbin Shanks on 10/23/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Image(systemName: "chevron.left")
                .foregroundColor(.red)
                .font(.system(size: 20))
                .padding(.leading)
                .onTapGesture {
                }
            
            Spacer()

            Circle()
                .fill(Color(red: 26/255, green: 26/255, blue: 28/255))
                .frame(width: 30, height: 30)
                .overlay(
                    Image(systemName: "arrow.down")
                        .foregroundColor(.red)
                )
                .padding(.trailing)
                .onTapGesture {
                }
            
            Circle()
                .fill(Color(red: 26/255, green: 26/255, blue: 28/255))
                .frame(width: 30, height: 30)
                .overlay(
                    Image(systemName: "ellipsis")
                        .foregroundColor(.red)
                )
                .padding(.trailing, 8)
                .onTapGesture {
                }
        }
        .background(Color.black)
    }
}

#Preview {
    HeaderView()
}
