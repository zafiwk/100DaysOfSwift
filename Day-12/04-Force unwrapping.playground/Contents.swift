import UIKit

// For example, if you have a string that contains a number, you can convert it to an Int like this:
let str = "5"
let num = Int(str)

// Swift will immediately unwrap the optional and make num a regular Int rather than an Int?. But if you’re wrong – if str was something that couldn’t be converted to an integer – your code will crash.
let num1 = Int(str)!


let url = URL(string: "https://www.apple.com")!
//let url = URL(string: "https://www.\(website)")!
let randomNumber = (1...10).randomElement()!


enum Direction: CaseIterable {
    case north, south, east, west
}

let randomDirection = Direction.allCases.randomElement()!


// Examples
// Which of these won't crash your code when they are run?
let legoBricksSold: Int? = 400_000_000_000
let numberSold = legoBricksSold!


func describe(array: [String]?) {
    let unwrapped = array!
    print("The array has \(unwrapped.count) items.")
}
describe(array: [])


let age: Int = 21
let allowedMessage: String? = age >= 21 ? "Welcome!" : nil
let result = allowedMessage!


func league(for skillLevel: Int) -> Int? {
    switch skillLevel {
    case 1:
        fallthrough
    case 2:
        return 3
    case 3:
        return 2
    case 4:
        return 1
    default:
        return nil
    }
}
let allocatedLeague = league(for: 3)!


struct User {
    var name: String?
    var age: Int?
}
let taylor = User(name: "Taylor", age: 26)
let taylorAge = taylor.age!


func title(for page: Int) -> String? {
    guard page >= 1 else {
        return nil
    }
    let pageCount = 132
    if page < pageCount {
        return "Page \(page)"
    } else {
        return nil
    }
}
let pageTitle = title(for: 16)!
