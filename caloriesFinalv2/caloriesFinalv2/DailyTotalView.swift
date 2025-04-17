//
//  DailyTotalView.swift
//  caloriesFinalv2
//
//  Created by Corbin Shanks on 12/4/24.
//

import SwiftUI

struct DailyTotalView: View {
    @Binding var calorieEntries: [CalorieEntry]
    
    private var groupedEntries: [String: [CalorieEntry]] {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return Dictionary(grouping: calorieEntries, by: { formatter.string(from: $0.date) })
    }
    
    private var dailyAverage: Int {
        let totals = groupedEntries.values.map { $0.reduce(0) { $0 + $1.calories } }
        return totals.isEmpty ? 0 : totals.reduce(0, +) / totals.count
    }
    
    var body: some View {
        VStack {
            Text("Daily Totals")
                .font(.title)
                .padding()
            
            Text("Daily Average: \(dailyAverage) calories")
                .font(.headline)
                .foregroundColor(.blue)
            
            List {
                ForEach(groupedEntries.keys.sorted(), id: \.self) { date in
                    HStack {
                        Text(date)
                        Spacer()
                        Text("\(groupedEntries[date]?.reduce(0) { $0 + $1.calories } ?? 0) calories")
                            .foregroundColor(.gray)
                    }
                }
            }
        }
    }
}
