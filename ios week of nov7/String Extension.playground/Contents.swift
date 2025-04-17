import UIKit

extension String {
    func add(_ value: Int) -> Int? {
        if let number = Int(self) {
            return number + value
        } else {
            return nil
        }
    }
}

//imported from assignment
let value1: Int? = "5".add(3) // value1 will equal 8
let value2: Int? = "-2".add(1) // value2 will equal -1
let value3: Int? = "words".add(4) // value2 will be nil

//print values
print("value1:", value1 ?? "nil")
print("value2:", value2 ?? "nil")
print("value3:", value3 ?? "nil")
