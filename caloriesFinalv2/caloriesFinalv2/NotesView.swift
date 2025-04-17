//
//  NotesView.swift
//  caloriesFinalv2
//
//  Created by Corbin Shanks on 12/5/24.
//

import SwiftUI

struct NotesView: View {
    @State private var note: String = ""
    
    var body: some View {
        VStack {
            Text("Notes")
                .font(.title)
            TextEditor(text: $note)
                .padding()
                .border(Color.gray)
        }
    }
}
