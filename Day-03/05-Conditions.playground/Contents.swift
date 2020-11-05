import UIKit

// We can use conditions to check for a winning Blackjack hand
let firstCard = 11
let secondCard = 10

// if condition
if firstCard + secondCard == 21 {
    print("Blackjack!")
}

// else condition
if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

// else if condition
if firstCard + secondCard == 2 {
    print("Aces - lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack")
} else {
    print("Regular cards")
}

// We could write a simple condition to check whether the score is over 9000 like this
let score = 9001

// if
if score > 9000 {
    print("It's over 9000!")
}

if score <= 9000 {
    print("It's not over 9000!")
}

// else
if score > 9000 {
    print("It's over 9000!")
} else {
    print("It's not over 9000!")
}

// else if
if score > 9000 {
    print("It's over 9000!")
} else if score == 9000 {
    print("It's exactly 9000!")
} else {
    print("It's not over 9000!")
}


// Examples
var city = "Tokyo"
if city == "Madrid" {
    print("Failure")
} else {
    print("Success")
}

let age = 21
if age > 18 {
    print("Success")
} else {
    print("Failure")
}

let employeeCount = 50
if employeeCount == 50 {
    print("Success")
}

let orderAmount = 200
if orderAmount >= 200 {
    print("Success")
}

let name = "Taylor"
if name == "Paul" {
    print("Failure")
} else {
    print("Success")
}

let teaStrength = 5
if teaStrength >= 4 {
    print("Success")
} else {
    print("Failure")
}
