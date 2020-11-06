import UIKit

// For example, here’s a range of numbers:
let count = 1...10
for number in count {
    print("Number is \(number)")
}

// We can do the same with arrays
let albums = ["Red", "1989", "Reputation"]
for album in albums {
    print("\(album) is on Apple Music")
}

// If you don’t use the constant that for loops give you, you should use an underscore instead so that Swift doesn’t create needless values
print("Players gonna")
for _ in 1...5 {
    print("play")
}

// If you want to loop over items in an array, you might write code such as this
let names = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]
for name in names {
    print("\(name) ius a secret agent")
}

// if you don’t use a loop variable inside the body, Swift will warn you to rewrite it like this
let namess = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]
for _ in namess {
    print("[JHGHJK] ius a secret agent")
}


// Examples
// This loop will print three lines of text – true or false?
let count2 = 1...3
for _ in count2 {
    print("There's no place like home.")
}

for i in 4...6 {
    print("Star War: Episode \(i)")
}

var namez = ["John", "Sophie", "Lottie"]
for name in namez {
    print("Hello, \(name)!")
}

var numberz = [1, 2, 3, 4, 5, 6]
for number in numberz {
    if number & 2 == 0 {
        print(number)
    }
}

for number in [2, 3, 5] {
    print("\(number) is a prime number.")
}

let scor3 = 100
for count in 10..<13 {
    print("I'm counting to \(count)")
}
