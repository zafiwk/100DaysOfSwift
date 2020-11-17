import UIKit

// Structs and classes (collectively: "types") can have their own variables and constants, and these are called properties.
struct Person {
    var clothes: String
    var shoes: String
    
    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
}
let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")
taylor.describe()
other.describe()


// Property observers
/* Swift lets you add code to be run when a property is about to be changed or has been changed.
    -> There are two kinds of property observer: willSet and didSet
        and they are called before or after a property is changed.
 
    In willSet Swift provides your code with a special value called newValue that contains what the new property value is going to be, and in didSet you are given oldValue to represent the previous value.
*/
struct Person2 {
    var clothes: String {
        willSet {
            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }
        didSet {
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
}
func updateUI(msg: String) {
    print(msg)
}
var tino = Person2(clothes: "T-shirts")
tino.clothes = "short skirts"


// Computed properties
struct Person3 {
    var age: Int
    var ageInDogYears: Int {
        get {
            return age * 7
        }
    }
}
var fan = Person3(age: 25)
print(fan.ageInDogYears)
