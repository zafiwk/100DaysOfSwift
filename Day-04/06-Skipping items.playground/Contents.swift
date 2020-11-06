import UIKit

// As you’ve seen, the break keyword exits a loop. But if you just want to skip the current item and continue on to the next one, you should use continue instead.
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    print(i)
}


// Examples
// This loop will print at least five lines of text – true or false?
let fibonacci = [1, 1, 2, 3, 5, 8, 13, 21]
var position = 0
while position <= 7 {
    let value = fibonacci[position]
    position += 1
    if value < 2 {
       continue
    }
    print("Fibonacci number \(position) is \(value)")
}


for i in 1...15 {
    let square = i * i
    if i == 8 {
        continue
    }
    print("\(i) squared is \(square)")
}


var counting = 0
while counting <= 20 {
    counting += 1
    if counting > 5 {
        continue
    }
    print("\(counting)...")
}
print("Ready or not, here I come!")


var distanceFlown = 0
while true {
    distanceFlown += 100
    if distanceFlown == 500 {
        continue
    }
    print(distanceFlown)
    if distanceFlown == 1000 {
        break
    }
}


for i in 1...100 {
    if 100 % i == 0 {
        print("100 divides evenly into \(i)")
    } else {
        continue
    }
}


var carsProduced = 0
repeat {
    carsProduced += 1
    if carsProduced % 2 == 0 {
        continue
    }
    print("Another car was built.")
} while carsProduced < 20
