import UIKit

struct Person {
    var name: String
    
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}


struct Student {
    var name: String
    var bestFriend: String
    
    init(name: String, bestFriend: String) {
        print("Enrolling \(name) in class...")
        self.name = name
        self.bestFriend = bestFriend
    }
}


// Examples
struct Conference {
    var name: String
    var location: String
    init(name: String, location: String) {
        self.name = name
        self.location = location
    }
}
let wwdc = Conference(name: "WWDC", location: "San Jose")


struct SuperHero {
    var nickname: String
    var powers: [String]
    init(nickname: String, superPowers: [String]) {
        self.nickname = nickname
        self.powers = superPowers
    }
}
let batman = SuperHero(nickname: "The Caped Crusader", superPowers: ["He's really rich"])


struct Kitchen {
    var utensils: [String]
    init(utensils: [String]) {
        self.utensils = utensils
    }
}


struct Character {
    var name: String
    var actor: String
    var probablyGoingToDie: Bool
    init(name: String, actor: String) {
        self.name = name
        self.actor = actor
        if self.actor == "Sean Bean" {
            probablyGoingToDie = true
        } else {
            probablyGoingToDie = false
        }
    }
}

struct Cottage {
    var rooms: Int
    var rating = 5
    init(rooms: Int) {
        self.rooms = rooms
    }
}
let bailbrookHouse = Cottage(rooms: 4)


struct District {
    var number: Int
    var supervisor: String
    init(number: Int, supervisor: String) {
        self.number = number
        self.supervisor = supervisor
    }
}
let district = District(number: 9, supervisor: "Unknown")
