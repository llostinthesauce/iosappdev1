//
//  ContentView.swift
//  Colors
//
//  Created by Corbin Shanks on 11/7/24.
//

import SwiftUI

struct ContentView: View {
    @State private var color = Color.blue

    var body: some View {
        VStack {
            ColorPicker("Select color:", selection: $color)
                .padding()
            Rectangle()
                .fill(color)
                .frame(width: 150, height: 150)
        }
    }
}

#Preview {
    ContentView()
}
