import UIKit

func square(number: Int) -> Int {
    return number * number
}
let result = square(number: 8)


// Swift lets us provide two names for each parameter: one to be used externally when calling the function, and one to be used internally inside the function. This is as simple as writing two names, separated by a space.

// To demonstrate this, here’s a function that uses two names for its string parameter:
func sayHello(to name: String) {
    print("Hello, \(name)!")
}
sayHello(to: "Taylor")


func setAge(for person: String, to value: Int) {
    print("\(person) is now \(value)")
}
setAge(for: "Florentino", to: 37)


// Examples
// This code is valid Swift – true or false?
func sayHello2(to name: String) {
    print("Hello, \(name)!")
}


func isPassingGrade(for scores: [Int]) -> Bool {
    var total = 0
    for score in scores {
        total += score
    }
    if total >= 500 {
        return true
    } else {
        return false
    }
}


func numberOfTims(in array: [String]) -> Int {
    var count = 0
    for name in array {
        if name == "Tim" {
            count += 1
        }
    }
    return count
}


func increaseVolume(for device: String) -> String {
    return "\(device) is now louder"
}


func countDown(from start: Int) {
    var current = start
    while current >= 0 {
        print("\(current)...")
        current -= 1
    }
}
countDown(from: 10)


func writeReview(for book: String) {
    print("\(book) was a great book!")
}



