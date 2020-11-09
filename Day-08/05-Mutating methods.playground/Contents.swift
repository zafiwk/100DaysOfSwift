import UIKit

struct Person {
    var name: String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}
var person = Person(name: "Tino")
person.makeAnonymous()


// Examples
struct Diary {
    var entries: String
    mutating func add(entry: String) {
        entries += "\(entry)"
    }
}


struct Surgeon {
    var operationsPerformed = 0
    mutating func operate(on patient: String) {
        print("Nurse, hand me the scalpel!")
        operationsPerformed += 1
    }
}


struct Book {
    var totalPages: Int
    var pagesLeftToRead = 0
    mutating func read(pages: Int) {
        if pages < pagesLeftToRead {
            pagesLeftToRead -= pages
        } else {
            pagesLeftToRead = 0
            print("I'm done!")
        }
    }
}


struct BankAccount {
    var balance: Int
    mutating func donateToCharity(amount: Int) {
        balance -= amount
    }
}


struct Delorean {
    var speed = 0
    mutating func accelerate() {
        speed += 1
        if speed == 88 {
            travelThroughTime()
        }
    }
    func travelThroughTime() {
        print("Where we're going we don't need roads.")
    }
}


struct Bicycle {
    var currentGear: Int
    mutating func changeGear(to newGear: Int) {
        currentGear = newGear
        print("I'm now in gear \(currentGear).")
    }
}
