import UIKit

var action: String
var person = "hater"
if person == "hater" {
    action = "hate"
} else if person == "player" {
    action = "play"
} else {
    action = "cruise"
}


// Evaluating multiple conditions
var action1: String
var stayOutTooLate1 = true
var nothingInBrain1 = true
if stayOutTooLate1 && nothingInBrain1 { // && operator "and"
    action1 = "cruise"
}


// Looking for the opposite of truth
if !stayOutTooLate1 && !nothingInBrain1 { // ! operator "not"
    action1 = "cruise"
}
