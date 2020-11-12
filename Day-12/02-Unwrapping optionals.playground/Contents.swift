import UIKit

var name: String? = nil
if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}


func getUsername() -> String? {
    "Tinillo"
}
if let username = getUsername() {
    print("Username is \(username)")
} else {
    print("No username")
}


// Examples
var favoriteMovie: String? = nil
favoriteMovie = "The Life of Brian"
if let movie = favoriteMovie {
    print("Your favorite movie is \(movie).")
} else {
    print("You don't have a favorite movie.")
}


let song: String? = "Shake it Off"
if let unwrappedSong = song {
    print("The name has \(unwrappedSong.count) letters.")
}


let currentDestination: String? = nil
if let destination = currentDestination {
    print("We're walking to \(destination).")
} else {
    print("We're just wandering.")
}


let album = "Red"
let albums = ["Reputation", "Red", "1989"]
if let position = albums.firstIndex(of: album) {
    print("Found \(album) at position \(position).")
}


let userAge: Int? = 38
if let age = userAge {
    print("You are \(age) years old.")
}

var winner: String? = nil
winner = "Daley Thompson"
if let name = winner {
    print("And the winner is... \(name)!")
}
