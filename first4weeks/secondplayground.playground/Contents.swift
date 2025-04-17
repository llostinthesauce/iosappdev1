import UIKit

func greet(person name: String, greeting: String) -> String
{
    return greeting + " " + name
}

let result1 = greet(person: "Maria", greeting: "Hey there")
print(result1)

let greeting = greet(person: "Karen", greeting: "Hello")
print(greeting)


func convertMilesToKilometers(_ miles: Double) -> Double
{
    let one_km = 1.60934
    return miles * one_km
}

let test = convertMilesToKilometers(5.5)
print(test)


func convertToFahrenheit(_ celcius: Double) -> Double
{
    return celcius * (9/5) + 32
}

let test2 = convertToFahrenheit(32)
print(test2)


func areaOfCircle(_ radius: Double) -> Double
{
    let pi = 3.14159
    return (radius * radius) * pi
}

let mana = areaOfCircle(10)
print(mana)


func isEven(_ num: Int) -> Bool
{
    return num % 2 == 0
}

let poop = isEven(5)
print(poop)


func sumArray(_ array: [Int]) -> Int
{
    var total = 0
    for number in array
    {
        total = total + number
    }
    return total
}

let array1 = [1, 2, 3, 4, 5]
print(sumArray(array1))  // Output: 15 (1 + 2 + 3 + 4 + 5)


func factorial(_ num: Int) -> Int
{
    var result = 1
    for i in 1...num
    {
        result = result * i
    }
    return result
}

print(factorial(5))  // Output: 120


func fib(_ num: Int) -> [Int]
{
    if num <= 0
    {
        return []
    }
    if num == 1
    {
        return [0]
    }
    
    //more needed
    return [num]
}
