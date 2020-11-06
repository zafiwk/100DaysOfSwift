import UIKit

func square(number: Int) -> Int {
    return number * number
}
let result = square(number: 8)
print(result)


// All this matters because Swift lets us skip using the return keyword when we have only one expression in our function. So, these two functions do the same thing:
func doMath() -> Int {
    return 5 + 5
}

// This is some
func doMoreMath() -> Int {
    5 + 5
}


// To demonstrate this, consider the following function:
func greet(name: String) -> String {
    if name == "Taylor Swift" {
        return "Oh wow!"
    } else {
        return "Hello, \(name)"
    }
}


// However, we could use the ternary operator like this:
func greett(name: String) -> String {
    name == "Taylor Swift" ? "Oh wow!" : "Hello, \(name)"
}
let nombre = greet(name: "Florentino")
print(nombre)


// So, when that function runs it effectively boils down to this:
func grreet(name: String) -> String {
    "Oh wow!"
}
let nombre2 = grreet(name: "Florentino")
print(nombre2)


// If we wanted to make a function that returns a person’s first name and last name, we could do it like this:
func getUser() -> [String] {
    ["Taylor", "Swift"]
}
let user = getUser()
print(user)


// A second pass at the function might look like this:
func getUserr() -> [String: String] {
    ["first": "Taylor", "last": "Swift"]
}
let user2 = getUserr()
print(user2["first"]!)


// Tuples can solve the problem by letting us be specific about what data will come back: its name, its type, its order, and whether it’s optional or not. This means we can write functions to return multiple values much more safely:
func getUsser() -> (first: String, last: String) {
    (first: "Taylor", last: "Swift")
}

let user3 = getUsser()
print(user3.first)


// Examples
// This code is valid Swift – true or false?
func read(books: [String]) -> Bool {
    for book in books {
        print("I'm reading \(book)")
    }
    return true
}


func format(number: Int) -> String {
    return "The number is \(number)"
}


func countMultiplesOf10(numbers: [Int]) -> Int {
    var result = 0
    for number in numbers {
        if number % 10 == 0 {
            result += 1
        }
    }
    return result
}
countMultiplesOf10(numbers: [5, 10, 15, 20, 25])


func allTestsPassed(tests: [Bool]) -> Bool {
    for test in tests {
        if test == false {
            return false
        }
    }
    return true
}


func isEveryoneAdult(ages: [Int]) -> Bool {
    for age in ages {
        if age < 18 {
            return false
        }
    }
    return true
}
isEveryoneAdult(ages: [10, 20, 16, 24])
