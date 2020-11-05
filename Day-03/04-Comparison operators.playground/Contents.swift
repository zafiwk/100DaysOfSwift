import UIKit

let firstScore = 6
let secondScore = 4

// here are two operators that check for equality: == checks two values are the same, and != (pronounced “not equals”) checks two values are not the same:
firstScore == secondScore
firstScore != secondScore

// There are four operators for comparing whether one value is greater than, less than, or equal to another. These are just like in mathematics:
firstScore < secondScore
firstScore >= secondScore

"Tayloe" <= "Swift"

let firstName = "Paul"
let secondName = "Sophie"
let firstAge = 40
let secondAge = 10
print(firstName == secondName)
print(firstName != secondName)
print(firstName < secondName)
print(firstName >= secondName)

print(firstAge == secondAge)
print(firstAge != secondAge)
print(firstAge < secondAge)
print(firstAge >= secondAge)

// Swift 5.3
enum Sizes: Comparable {
    case small
    case medium
    case large
}
let first = Sizes.small
let second = Sizes.large
print(first < second)


// Examples
var a = 1, b = 2, c = 3
a + 2 == b + 1
a + 1 < c
a == a
a != c
c >= a
a < b
