import UIKit

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}
let earth = Planet(rawValue: 3)


// Examples
/*
 You can give each case specific values if you want
 
 Integer raw values count from 0 automatically
 
 You don't need to use raw values
 
 You can use integers for raw values
 
 Raw values let us create enum values dynamically
 
 Raw values let us give meaning to enum cases
 */
