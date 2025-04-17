//
//  CalorieEntry.swift
//  caloriesFinalv2
//
//  Created by Corbin Shanks on 12/4/24.
//

import SwiftUI

struct CalorieEntry: Identifiable {
    var id = UUID()
    var foodName: String
    var calories: Int
    var date: Date
}
