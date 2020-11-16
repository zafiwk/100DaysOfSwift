import UIKit

struct Person {
    var clothes: String
    var shoes: String
}
let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
print(taylor.clothes)
let other = Person(clothes: "short skirts", shoes: "high heels")
print(other.shoes)


struct Person2 {
    var clothes: String
    var shoes: String
}
let taylor2 = Person2(clothes: "T-shirts", shoes: "sneakers")
let other2 = Person2(clothes: "short skirts", shoes: "high heels")


var taylorCopy = taylor2
taylorCopy.shoes = "flip flops"
print(taylor2)
print(taylorCopy)


// Functions inside structs
struct Persona {
    var clothes: String
    var shoes: String
    
    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
}
var persona = Persona(clothes: "Optima", shoes: "Adidas")
print(persona.clothes, persona.shoes)
