import UIKit

enum PasswordError: Error {
    case obvious
}
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}


// Examples
//This code is valid Swift – true or false?
enum PlayError: Error {
    case cheating
    case noPlayers
}
func playGame(name: String, cheat: Bool = false) throws {
    if cheat {
        throw PlayError.cheating
    } else {
        print("Let's play a game of \(name)...")
    }
}


enum PizzaErrors: Error {
    case hasPineapple
}
func makePizza(type: String) throws {
    if type != "Hawaiian" {
        print("Your pizza will be ready in 10 minutes.")
    } else {
        throw PizzaErrors.hasPineapple
    }
}


enum PrintError: Error {
    case invalidCount
}
func printPages(text: String, count: Int) throws {
    if count <= 0 {
        throw PrintError.invalidCount
    } else {
        for _ in 1...count {
            print("Printing \(text)...")
        }
    }
}


enum LoginError: Error {
    case unknownUser
}
func authenticate(username: String) throws {
    if username == "Anonymous" {
        throw LoginError.unknownUser
    }
    print("Welcome, \(username)!")
}


enum BookErrors: Error {
    case tooFewPages
    case tooManyPages
}
func writeBook(title: String, pages: Int) throws {
    switch pages {
    case 0...50:
        throw BookErrors.tooFewPages
    case 51...400:
        print("Perfect! I'm going to write \(title)...")
    default:
        throw BookErrors.tooManyPages
    }
}


enum CatProblems: Error {
    case notACat
    case unfriendly
}
func strokeCat(_ name: String) throws {
    if name == "Mr Bitey" {
        throw CatProblems.unfriendly
    } else if name == "Lassie" {
        throw CatProblems.notACat
    } else {
        print("You stroked \(name).")
    }
}
