import UIKit

// You can give your own parameters a default value just by writing an = after its type followed by the default you want to give it. So, we could write a greet() function that can optionally print nice greetings:
func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)")
    } else {
        print("Oh no, it's \(person) again...")
    }
}
greet("Florentino")
greet("Florentino", nicely: false)


// Examples
// This code is valid Swift – true or false?
func calculateWages(payBand: Int, isOvertime: Bool = false) -> Int {
    var pay = 10_000 * payBand
    if isOvertime {
        pay *= 2
    }
    return pay
}
calculateWages(payBand: 5, isOvertime: true)


func playGame(name: String, cheat: Bool = false) {
    if cheat {
        print("Let's play \(name); I bet I win!")
    } else {
        print("Let's play \(name)!")
    }
}


func packLunchbox(number: Int, healthy: Bool = true) {
    for _ in 0..<number {
        if healthy {
            print("I'm packing a healthy lunchbox.")
        } else {
            print("Pizza for everyone!")
        }
    }
}


func runRace(distance: Int = 10) {
    if distance < 5 {
        print("This should be easy!")
    } else if distance < 10 {
        print("This should be a nice challenge.")
    } else {
        print("Let's do this!")
    }
}


func scoreGoal(overheadKick: Bool = false) {
    if overheadKick {
        print("Wow - amazing!")
    } else {
        print("Great goal!")
    }
}
scoreGoal(overheadKick: true)


func parkCar(_ type: String, automatically: Bool = true) {
    if automatically {
        print("Nice - my \(type) parked itself!")
    } else {
        print("I guess I'll have to do it.")
    }
}
parkCar("Tesla")
