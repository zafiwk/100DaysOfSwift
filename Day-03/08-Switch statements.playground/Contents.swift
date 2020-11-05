import UIKit

let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}

// Swift will only run the code inside each case. If you want execution to continue on to the next case, use the fallthrough keyword like this:
let weather2 = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}


// Examples
/*
 You place the value you want to check at the start
 
 You must list all outcomes as case statements or use default
 
 If you want to match all other values, use default
 
 The default case is written as default: rather than case default:
 
 Code from the following case will be run if you use fallthrough
 
 Switch statements are often clearer to read than multiple if conditions
 */
