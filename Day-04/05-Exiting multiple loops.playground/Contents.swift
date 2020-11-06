import UIKit

for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")
    }
}


// If we wanted to exit part-way through we need to do two things. First, we give the outside loop a label, like this:
outerLoop: for x in 1...10 {
    for z in 1...10 {
        let product = x * z
        print("\(x) * \(z) is \(product)")
        
        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}


// To demonstrate them, let’s look at an example where we’re trying to figure out the correct combination of movements to unlock a safe. We might start by defining an array of all possible movements:
let options = ["up", "down", "left", "right"]
let secretCombination = ["up", "up", "right"]

outerLoop: for option1 in options {
    for option2 in options {
        for option3 in options {
            print("In loop")
            let attempt = [option1, option2, option3]
            if attempt == secretCombination {
                print("The combination is \(attempt)")
                break outerLoop
            }
        }
    }
}


// Examples
// Which of these statements about multiple loops are true?
/*
 You can exit more than one loop at a time
 
 Loop labels look like this: myLoop:
 
 You can break out of a labeled loop whenever you need.
 
 Using break by itself exits the current loop only.
 
 A loop inside a loop is called a nested loop
 */
