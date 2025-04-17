//
//  ContentView.swift
//  States
//
//  Created by Corbin Shanks on 11/6/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView { //using navigationview here
            List(USStates.list) { state in //using list here
                NavigationLink(destination: DetailView(state: state)) { //using navigationlink here
                    Text(state.name)
                }
            }
            .navigationTitle("US States")
        }
    }
}

#Preview {
    ContentView()
}
