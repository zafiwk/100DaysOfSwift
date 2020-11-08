import UIKit

let driving = { (place: String) in
    print("I'm going to \(place) in my car")
}
driving("Tabasco")


// Examples
// This code is valid Swift – true or false?
var cleanRoom = { (name: String) in
    print("I'm cleaning the \(name).")
}
cleanRoom("kitchen")


var sendMessage = { (message: String) in
    if message != "" {
        print("Sending to Twitter: \(message)")
    } else {
        print("Your message was empty.")
    }
}


var click = { (button: Int) in
    if button >= 0 {
        print("Button \(button) was clicked.")
    } else {
        print("That button doesn't exist.")
    }
}


let fixCar = { (problem: String) in
    print("I fixed the \(problem).")
}


let makeReservation = { (people: Int) in
    print("I'd like a table for \(people), please.")
}


let rowBoat = { (distance: Int) in
    for _ in 1...distance {
        print("I'm rowing 1km.")
    }
}
rowBoat(5)
