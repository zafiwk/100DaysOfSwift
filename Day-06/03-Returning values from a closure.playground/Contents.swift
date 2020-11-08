import UIKit

let drivingWithReturn = { (place:  String) -> String in
    return "I'm going to \(place) in my car"
}
let message = drivingWithReturn("Tabasco")
print(message)


// First, here’s a closure that accepts one parameter and returns nothing:
let payment = { (user: String) in
    print("Paying \(user)...")
}


// Now here’s a closure that accepts one parameter and returns a Boolean:
let payment2 = { (user: String) -> Bool in
    print("Paying \(user)...")
    return true
}


// If you want to return a value without accepting any parameters, you can’t just write -> Bool in – Swift won’t understand what you mean.
let payment3 = { () -> Bool in
    print("Paying an anonymous person...")
    return true
}


// Examples
// This code is valid Swift – true or false?
var flyDrone = { (hasPermit: Bool) -> Bool in
    if hasPermit {
        print("Let's find somewhere safe!")
        return true
    }
    print("That's against the law.")
    return false
}


let measureSize = { (inches: Int) -> String in
    switch inches {
    case 0...26:
        return "XS"
    case 27...30:
        return "S"
    case 31...34:
        return "M"
    case 35...38:
        return "L"
    default:
        return "XL"
    }
}
measureSize(36)


var difficultyRating = { (trick: String) -> Int in
    if trick == "ollie" {
        return 1
    } else if trick == "Yoyo Plant" {
        return 3
    } else if trick == "900" {
        return 5
    } else {
        return 0
    }
}
print(difficultyRating("ollie"))


var costToShootMovie = { (location: String) -> Int in
    if location == "UK" {
        return 1_000_000
    } else if location == "US" {
        return 5_000_000
    } else {
        return 500_000
    }
}


let writeEssay = { (topic: String) -> String in
    return "Here's an essay on \(topic)."
}


let bakeBirthdayCake = { (name: String) -> Int in
    print("I've made a cake for \(name); here's the bill.")
    return 50
}
