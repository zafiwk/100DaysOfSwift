import UIKit

let score = 85
switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

let names = ["Piper", "Alex", "Suzanne", "Gloria"]
print(names[0])
print(names[1...3])
print(names[1...])


// Examples
// Which of these ranges contain the number 5?
5..<6
3..<6
3..<30
1...8
5...10
0...5
