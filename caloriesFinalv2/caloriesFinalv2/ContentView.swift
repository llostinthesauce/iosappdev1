//
//  ContentView.swift
//  caloriesFinalv2
//
//  Created by Corbin Shanks on 12/4/24.
//

import SwiftUI

struct ContentView: View {
    @State private var calorieEntries = [CalorieEntry]()
    @State private var showAddEntry = false

    var body: some View {
        TabView {
            NavigationView {
                VStack {
                    Text("Total Calories: \(calorieEntries.reduce(0) { $0 + $1.calories })")
                        .padding()

                    List {
                        ForEach(calorieEntries) { entry in
                            HStack {
                                Text(entry.foodName)
                                Spacer()
                                Text("\(entry.calories) calories")
                                Button(action: {
                                    if let index = calorieEntries.firstIndex(where: { $0.id == entry.id }) {
                                        calorieEntries.remove(at: index)
                                    }
                                }) {
                                    Image(systemName: "trash")
                                        .foregroundColor(.red)
                                }
                            }
                        }
                        .onDelete(perform: deleteEntry)
                    }

                    HStack {
                        QuickAddButton(foodName: "Apple", calories: 120, calorieEntries: $calorieEntries)
                        QuickAddButton(foodName: "Banana", calories: 110, calorieEntries: $calorieEntries)
                        QuickAddButton(foodName: "Coffee", calories: 5, calorieEntries: $calorieEntries)
                        QuickAddButton(foodName: "Egg", calories: 70, calorieEntries: $calorieEntries)
                    }
                    .padding()

                    Button("Add Entry") { showAddEntry.toggle() }
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .sheet(isPresented: $showAddEntry) {
                            AddEntryView(calorieEntries: $calorieEntries)
                        }
                }
                .navigationTitle("Calorie Tracker")
            }
            .tabItem {
                Label("Entries", systemImage: "list.dash")
            }

            DailyTotalView(calorieEntries: $calorieEntries)
                .tabItem {
                    Label("Daily Total", systemImage: "calendar")
                }

            NotesView()
                .tabItem {
                    Label("Notes", systemImage: "note.text")
                }
        }
    }

    private func deleteEntry(at offsets: IndexSet) {
        calorieEntries.remove(atOffsets: offsets)
    }
}

struct QuickAddButton: View {
    let foodName: String
    let calories: Int
    @Binding var calorieEntries: [CalorieEntry]

    var body: some View {
        Button(foodName) {
            calorieEntries.append(CalorieEntry(foodName: foodName, calories: calories, date: Date()))
        }
        .padding()
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(8)
    }
}
