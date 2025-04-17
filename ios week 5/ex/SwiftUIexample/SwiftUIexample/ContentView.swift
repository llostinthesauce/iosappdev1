//
//  ContentView.swift
//  SwiftUIexample
//
//  Created by Corbin Shanks on 9/18/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Spacer()
            Image("Bay Bridge")
                .resizable()
                .aspectRatio(contentMode: .fill)
                
            Image("basketball")
                .padding(.all)
            Image("baseball")
            HStack(spacing: 20) {
                Spacer()
                Image("hockey")
                Image("soccer")
                Image("baseball")
                Spacer()
            }
            DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ }).padding()
            Text("Hello, world!").padding()
        }.padding(10)
    }
}

#Preview {
    ContentView()
}
