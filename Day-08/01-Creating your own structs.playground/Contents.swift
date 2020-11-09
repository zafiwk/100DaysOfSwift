import UIKit

struct Sport {
    // Properties
    var name:  String
}

// use an Instance of it
var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn Tennis"


// tuple
// (name: String, age: Int, city: String)

// Struct
struct User {
    var name: String
    var age: Int
    var city: String
}


// Examples
struct ChessPiece {
    var name: String
    var value: Int
}


struct User2 {
    var name = "Anonymous"
    var age: Int
}
let twostraws = User2(name: "Paul", age: 38)


struct Phone {
    var manufacturer: String
    var screenSize: Double
}


struct WeatherForecast {
    var dayNumber: Int
    var temperature: Int
}
let monday = WeatherForecast(dayNumber: 1, temperature: 25)


struct Book {
    var title: String
    var author = "Unknown"
    var pageCount = 0
}


struct Player {
    var name: String
    var position: String
}
let harry = Player(name: "Harry Kane", position: "Forward")
