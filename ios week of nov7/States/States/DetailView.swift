//
//  DetailView.swift
//  States
//
//  Created by Corbin Shanks on 11/6/24.
//

import SwiftUI

struct DetailView: View {
    let state: USState

    var body: some View {
        VStack(alignment: .leading) {
            Text("Rank: \(state.rank)")
            Text("Population: \(state.pop)")
            Text("Population in 2018: \(state.pop2018)")
            Text("Population in 2010: \(state.pop2010)")
            Text("Density: \(state.density)")
            
            Spacer()
        }
        .padding()
        .navigationTitle(state.name)
    }
}
