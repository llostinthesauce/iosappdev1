import UIKit

//struct photo challenge
struct TravelPhoto {
    let latitude: Double
    let longitude: Double
    let title: String
    let description: String
    let image: String
    let urlString: String
}

let photo1 = TravelPhoto(
    latitude: 38.94733,
    longitude: -92.328466,
    title: "The Mizzou Columns",
    description: "University of Missouri six iconic columns",
    image: "columns.png",
    urlString: "http://missouri.edu/about/history/columns.php"
)

//document class challenge
class Document {
    var title: String
    var body: String = ""
    var length: Int {
        return body.count
    }
    
    init(title: String) {
        self.title = title
    }
    
    init(title: String, body: String) {
        self.title = title
        self.body = body
    }
}

let document1 = Document(title: "Hello World")
document1.title = "Hello World!"
document1.body = "I awoke from a digital slumber."
let document2 = Document(title: "The Day", body: "It was a day to remember.")
print(document1.title)
print(document1.body)
print(document1.length)
print(document2.title)
print(document2.length)

//arrays
var colors: [String] = ["red", "orange", "yellow", "pink"]

colors.removeLast()
colors.append("green")
let numColors = colors.count
print("number of colors = \(numColors)")
print("colors: ")

for color in colors {
    print(color)
}

let moreColors: [String] = ["blue", "purple"]
let allColors: [String] = colors + moreColors //can omit [string]
print("all colors: ")

for color in allColors {
    print(color)
}

//states collection challenge
var states: [String: String] = [:]

states["MO"] = "Missouri"
states["PA"] = "Pennsylvania"
states["CA"] = "California"

for (stateCode, stateName) in states {
    print("\(stateCode) is \(stateName)")
}

let stateCodes = Array(states.keys)

for code in stateCodes { //looping thru dict is random output unless using ordered
    print(code)
}

states["PA"] = nil
_ = states.removeValue(forKey: "MO")

for (stateCode, stateName) in states {
    print("\(stateCode) is \(stateName)")
}


enum OuterPlanets: Int {
    case mars = 4
    case jupiter
    case saturn
    case uranus
    case neptune
}

// Test the raw values
print("Raw value of mars: \(OuterPlanets.mars.rawValue)")    // Output: 4
print("Raw value of jupiter: \(OuterPlanets.jupiter.rawValue)") // Output: 5
print("Raw value of saturn: \(OuterPlanets.saturn.rawValue)")  // Output: 6
print("Raw value of uranus: \(OuterPlanets.uranus.rawValue)")  // Output: 7
print("Raw value of neptune: \(OuterPlanets.neptune.rawValue)") // Output: 8

struct Kilometers {
     var kilometers: Double

     init(fromMiles miles: Double) {
          kilometers = miles * 1.60934
     }

     init(fromMeters meters: Double) {
          kilometers = meters / 1000.0
     }
}

let distance = Kilometers(fromMiles: 2.5)
print(distance)

struct Circle {
     var radius = 0.0
     var x = 0.0
     var y = 0.0
}

let circle = Circle(radius: 5.0, x: 2.3, y: 7.1)
print(circle)

class User {
    let firstName: String
    let lastName: String
    let userID: String

    init(firstName: String, lastName: String, userID: String) {
         self.firstName = firstName
         self.lastName = lastName
         self.userID = userID
     }
}

var user = User(firstName: "Sally", lastName: "Garcia", userID: "sgarcia")
print(user)

struct Point {
     var x = 0.0, y = 0.0
}

var point1 = Point()

point1.x = 7.1
print(point1)

func updateValue(_ value: inout Int) {
    value += 10
}

var number = 5
updateValue(&number)
print(number)  // Output: 15
