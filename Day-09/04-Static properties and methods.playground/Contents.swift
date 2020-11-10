import UIKit

struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}
let tino = Student(name: "Tino")
let lopez = Student(name: "Lopez")
print(Student.classSize)


// Examples
struct Amplifier {
    static let maximumVolume = 11
    var currentVolume: Int
}


struct NewsStory {
    static var breakingNewsCount = 0
    static var regularNewsCount = 0
    var headline: String
    init(headline: String, isBreaking: Bool) {
        self.headline = headline
        if isBreaking {
            NewsStory.breakingNewsCount += 1
        } else {
            NewsStory.regularNewsCount += 1
        }
    }
}


struct FootballTeam {
    static let teamSize = 11
    var players: [String]
}


struct Pokemon {
    static var numberCaught = 0
    var name: String
    static func catchPokemon() {
        print("Caught!")
        Pokemon.numberCaught += 1
    }
}


struct Order {
    static let orderFormat = "XXX-XXXX"
    var orderNumber: String
}


struct LegoBrick {
    static var numberMade = 0
    var shape: String
    var color: String
    init(shape: String, color: String) {
        self.shape = shape
        self.color = color
        LegoBrick.numberMade += 1
    }
}
