import UIKit

// You can get this same behavior in your own functions by using an underscore, _, for your external parameter name, like this:
func greet(_ person: String) {
    print("Hello, \(person)!")
}
greet("Florentino")


/*
 The main reason for skipping a parameter name is when your function name is a verb and the first parameter is a noun the verb is acting on. For example:

-> Greeting a person would be greet(taylor) rather than greet(person: taylor)
-> Buying a product would be buy(toothbrush) rather than buy(item: toothbrush)
-> Finding a customer would be find(customer) rather than find(user: customer)

 This is particularly important when the parameter label is likely to be the same as the name of whatever you’re passing in:

-> Singing a song would be sing(song) rather than sing(song: song)
-> Enabling an alarm would be enable(alarm) rather than enable(alarm: alarm)
-> Reading a book would be read(book) rather than read(book: book)
*/


// Examples
// This code is valid Swift – true or false?
func sumItems(_ items: [Int]) -> Int {
    var total = 0
    for item in items {
        total += item
    }
    return total
}


func bounceOnTrampoline(times: Int) {
    for _ in 1...times {
        print("Boing!")
    }
}


func greet2(_ name: String) {
    print("Hi, \(name)!")
}


func climbMountain(_ name: String) {
    print("I'm going to climb \(name).")
}
climbMountain("Everest")


func evaluateJavaScript(_ input: String) {
    print("Yup, that's JavaScript alright.")
}
