import UIKit

// Swift has two special operators that let us combine conditions together: they are && (pronounced “and”) and || (pronounced “or”)
let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}

// multiple conditions
let isOwner = true, isAdmin = true, isEditingEnabled = true

if isOwner == true || isAdmin == true {
    print("You can delete this post")
}

if (isOwner == true && isEditingEnabled) || isAdmin == true {
    print("You can delete this post")
}


// Examples
let a = 10
let b = 10

if a >= 10 && b <= 10 {
    print("Hello, Swift!")
}

let a1 = true
let b2 = true
if a1 && b2 {
    print("Hello, Swift!")
}

let test = false
if test == false {
    print("Hello, Swift!")
}

let name1 = "Charlotte"
let name2 = "Sophie"

if name1 == "Paul" || name2 == "Sophie" {
    print("Hello, Swift!")
}

let a3 = true
let b3 = false

if a3 || b3 {
    print("Hello, Swift!")
}

let age3 = 18
let age4 = 21

if age3 >= 18 || age3 <= 18 {
    print("Hello, Swift!")
}
