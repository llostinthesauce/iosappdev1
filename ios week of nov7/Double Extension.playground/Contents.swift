import UIKit

extension Double {
    func add(_ value: String) -> Double? {
        if let dV = Double(value) {
            return self + dV
        } else {
            return nil
        }
    }
}

//imported from assignment
let value1: Double? = 3.5.add("1.2") // value1 will equal 4.7
let value3: Double? = 1.5.add("words") // value will be nil

