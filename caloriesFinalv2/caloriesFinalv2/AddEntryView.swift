//
//  AddEntryView.swift
//  caloriesFinalv2
//
//  Created by Corbin Shanks on 12/4/24.
//

import SwiftUI

struct AddEntryView: View {
    @Binding var calorieEntries: [CalorieEntry]
    @State private var foodName = ""
    @State private var calories = ""
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Food Item")) {
                    TextField("Food Name", text: $foodName)
                    TextField("Calories", text: $calories)
                        .keyboardType(.numberPad)
                }
                Button("Save") {
                    if let calorieAmount = Int(calories), !foodName.isEmpty {
                        let newEntry = CalorieEntry(foodName: foodName, calories: calorieAmount, date: Date())
                        calorieEntries.append(newEntry)
                        dismiss()
                    }
                }
                .disabled(foodName.isEmpty || calories.isEmpty || Int(calories) == nil)
            }
            .navigationTitle("Add Entry")
        }
    }
}
