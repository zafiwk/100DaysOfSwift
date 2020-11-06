import UIKit

// You can exit a loop at any time using the break keyword. To try this out, let’s start with a regular while loop that counts down for a rocket launch
var countDown = 10
while countDown >= 0 {
    print(countDown)
    countDown -= 1
}
print("Blast off!")


// In this case, the astronaut in command gets bored part-way through the countdown and decides to skip the remainder and launch straight away:
var countDown1 = 10
while countDown1 >= 0 {
    print(countDown1)
    if countDown1 == 4 {
        print("I'm bored. Let's go now!")
        break
    }
    countDown1 -= 1
}


// For example, if you had an array of scores and you want to figure out how many of them the player achieved without getting a 0, you might write this:
let scores = [1, 8, 4, 3, 0, 5, 2]
var count = 0
for score in scores {
    if score == 0 {
        break
    }
    count += 1
}
print("You had \(count) scores before you got 0.")


// Examples
// This loop will print some text – true or false?
var counter = 0
while counter < 5 {
    counter += 1
    print("Counting: \(counter)")
}


for i in 1...10 {
    if i == 8 {
        print("Found number 8!")
    }
}


var people = 2
while people < 10 {
    people += 2
    if people == 10 {
        print("We got 10 people.")
    }
}


repeat {
    print("Hello, world!")
} while false


for person in ["Taylor", "Justin", "Adele"] {
    print("Hello, \(person)!")
}


for i in 1...15 {
    if i % 3 == 0 {
        if i % 5 == 0 {
            print("\(i) is a multiple of both 3 and 5.")
        }
    }
}
