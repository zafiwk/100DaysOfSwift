import UIKit

/*

 They look similar to structs, but have a number of important differences, including:

-> You don't get an automatic memberwise initializer for your classes; you need to write your own.
-> You can define a class as being based off another class, adding any new things you want.
-> When you create an instance of a class it’s called an object. If you copy that object, both copies point at the same data by default – change one, and the copy changes too.
*/


// Initializing an object
class Person {
    var clothes: String
    var shoes: String
    
    init(clothes: String, shoes: String) {
        self.clothes = clothes
        self.shoes = shoes
    }
}


// Class inheritance
class Singer {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func sing() {
        print("La la la la")
    }
}
var taylor =  Singer(name: "Taylor", age: 25)
taylor.name
taylor.age
taylor.sing()


class CountrySinger: Singer {
    override func sing() {
        print("Trucks, guitars, and liquor")
    }
}
var tayorr = CountrySinger(name: "Taylor", age: 37)
tayorr.sing()


class HeavyMetalSinger: Singer {
    var noiseLevel: Int
    
    init(name: String, age: Int, noiseLevel: Int) {
        self.noiseLevel = noiseLevel
        super.init(name: name, age: age)
    }
    
    override func sing() {
        print("Grrrrr rargh rargh rarrrrgh!")
    }
}
