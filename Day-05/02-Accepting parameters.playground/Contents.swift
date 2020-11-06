import UIKit


func square(number: Int) {
    print(number * number)
}
square(number: 8)


// Examples
// This code is valid Swift – true or false?
func count(to: Int) {
    for i in 1...to {
        print("I'm counting: \(i)")
    }
}


func format(number: Int) {
    print("The number is \(number).")
}
format(number: 32)


func check(age: Int) {
    if age >= 18 {
        print("You're an adult.")
    } else {
        print("You're a minor.")
    }
}
check(age: 18)


func square(numbers: [Int]) {
    for number in numbers {
        let squared = number * number
        print("\(number) squared is \(squared).")
    }
}
square(numbers: [2, 3, 4])


func sendTweet(text: String) {
    print("Posting to Twitter: \(text)")
}


func makeBand(names: [String]) {
    print("Let's start a band...")
    for name in names {
        print("\(name) wants to join!")
    }
}
makeBand(names: ["John", "Paul"])
