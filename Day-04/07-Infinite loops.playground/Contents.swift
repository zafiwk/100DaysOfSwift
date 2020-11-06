import UIKit

var counter = 0
while true {
    print(" ")
    counter += 1
    
    if counter == 273 {
        break
    }
}


var isAlive = false
while isAlive == true {
    print("I'm alive!")
}
print("I've snuffed it!")


// Examples
// This loop will never end – true or false?
var loggedIn = true
while loggedIn {
    print("Waiting for user input...")
}


while true {
    print("Fakers gonna fake")
}


var counter1 = 1
repeat {
    print("Counting: \(counter1)")
    counter1 += 2
} while counter1 != 10


var wantStarWarsSpinOffs = true
while wantStarWarsSpinOffs {
    print("It's time for another spin-off!")
}


var passengerCount = 0
repeat {
    print("There are \(passengerCount) passengers")
    passengerCount *= 2
} while passengerCount < 10


var isVisible = true
while isVisible == true {
    isVisible = false
    if isVisible == false {
        isVisible = true
    }
}
