import UIKit

for i in 1...10 {
    print("\(i) x 10 is \(i * 10)")
}


var str = "Florentino Lopez"
for _ in 1...5 {
    str += " tinillo"
}
print(str)


// Looping over arrays
var songs = ["Shake it Off", "You Belong with Me", "Look What You Made Me Do"]
for song in songs {
    print("My favorite song is \(song)")
}


var people = ["players", "haters", "heart-breakers", "fakers"]
var actions = ["play", "hate", "break", "fake"]
for i in 0...3 {
    print("\(people[i]) gonna \(actions[i])")
}


var people1 = ["players", "haters", "heart-breakers", "fakers"]
var actions1 = ["play", "hate", "break", "fake"]
for i in 0 ..< people.count {
    print("\(people1[i]) gonna \(actions1[i])")
}


// Inner loops
var people2 = ["players", "haters", "heart-breakers", "fakers"]
var actions2 = ["play", "hate", "break", "fake"]
for i in 0..<people.count {
    var str = "\(people[i]) gonna"
    for _ in 1...5 {
        str += " \(actions2[i])"
    }
    print(str)
}


// While loops
var counter = 0
while true {
    print("Counter is now \(counter)")
    counter += 1
    if counter == 556 {
        break // Whereas breaking out of a loop stops execution immediately
    }
}


var sonidos = ["Shake it Off", "You Belong with Me", "Look What You Made Me Do"]
for sonido in sonidos {
    if sonido == "You Belong with Me" {
        continue // continues directly after the loop, continuing a loop only exits the current iteration of the loop – it will jump back to the top of the loop and pick up from there
    }
    print("My favorite song is \(sonido)")
}
