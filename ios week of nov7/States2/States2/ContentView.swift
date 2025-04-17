//
//  ContentView.swift
//  States2
//
//  Created by Corbin Shanks on 11/6/24.
//

import SwiftUI

//copied states from assignment
struct ContentView: View {
    let states  = [ "(AK) Alaska", "(AL) Alabama", "(AR) Arkansas", "(AS) American Samoa", "(AZ) Arizona", "(CA) California", "(CO) Colorado", "(CT) Connecticut", "(DC) District of Columbia", "(DE) Delaware", "(FL) Florida", "(GA) Georgia", "(GU) Guam", "(HI) Hawaii", "(IA) Iowa", "(ID) Idaho", "(IL) Illinois", "(IN) Indiana", "(KS) Kansas", "(KY) Kentucky", "(LA) Louisiana", "(MA) Massachusetts", "(MD) Maryland", "(ME) Maine", "(MI) Michigan", "(MN) Minnesota", "(MO) Missouri", "(MS) Mississippi", "(MT) Montana", "(NC) North Carolina", "(ND) North Dakota", "(NE) Nebraska", "(NH) New Hampshire", "(NJ) New Jersey", "(NM) New Mexico", "(NV) Nevada", "(NY) New York", "(OH) Ohio", "(OK) Oklahoma", "(OR) Oregon", "(PA) Pennsylvania", "(PR) Puerto Rico", "(RI) Rhode Island", "(SC) South Carolina", "(SD) South Dakota", "(TN) Tennessee", "(TX) Texas", "(UT) Utah", "(VA) Virginia", "(VI) Virgin Islands", "(VT) Vermont", "(WA) Washington", "(WI) Wisconsin", "(WV) West Virginia", "(WY) Wyoming" ]
    
    @State private var selectedState = "(MO) Missouri"
    
    var body: some View {
        VStack {
            Picker("Select a State", selection: $selectedState) {
                ForEach(states, id: \.self) { state in
                    Text(state)
                }
            }
            .pickerStyle(MenuPickerStyle())
            Text("selected state: \(selectedState)")
        }
    }
}
