import UIKit

var number = 1
repeat {
    print(number)
    number += 1
} while number <= 20
print("Ready or not, here I come!")


repeat {
    print("This is false")
} while false


let numbers = [1, 2, 3, 4, 5]
var random = numbers.shuffled()

// other may
var random1 = numbers.shuffled()
while random1 == numbers {
    random1 = numbers.shuffled()
}


// Examples
// This is a valid repeat loop – true or false?
var countdown: Int = 5
repeat {
    print("\(countdown)...")
    countdown -= 1
} while countdown > 0
print("Lift off!")


var numberr = 0
repeat {
    numberr += 2
    print("\(numberr) is an even number.")
} while numberr < 20


var bagels = 5
repeat {
    print("Someone ate a bagel!")
    bagels -= 1
} while bagels > 0


var frogs = 4
repeat {
    for _ in 1...frogs {
        print("Ribbit!")
    }
} while false


var encores = 0
repeat {
    print("Let's play that piece again.")
    encores += 1
} while encores < 3


var scales = ["A", "B", "C", "D", "E"]
var scaleCounter = 0
repeat {
    print("Play the \(scales[scaleCounter]) scale")
    scaleCounter += 1
} while scaleCounter < 3
