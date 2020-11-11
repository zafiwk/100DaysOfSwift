import UIKit

// The final difference between classes and structs is the way they deal with constants. If you have a constant struct with a variable property, that property can’t be changed because the struct itself is constant.

class Singer {
    var name = "Florentino López"
    // let name = "Florentino López"
}
let tino = Singer()
tino.name = "Tinillo" //with code let is an Error
print(tino.name)


// Examples
class Pizza {
    private var toppings = [String]()
    func add(topping: String) {
        toppings.append(topping)
    }
}
var pizza = Pizza()
pizza.add(topping: "Mushrooms")


class Light {
    var onState = false
    func toggle() {
        if onState {
            onState = false
        } else {
            onState = true
        }
        print("Click")
    }
}
let light = Light()
light.toggle()


class Phasers {
    var energyLevel = 100
    func firePhasers() {
        if energyLevel > 10 {
            print("Firing!")
            energyLevel -= 10
        }
    }
}
var phasers = Phasers()
phasers.firePhasers()


class Sun {
    var isNova = false
    func goNova() {
        isNova = true
    }
}
let sun = Sun()
sun.goNova()


struct Barbecue {
    var charcoalBricks = 20
    mutating func addBricks(_ number: Int) {
        charcoalBricks += number
    }
}
var barbecue = Barbecue()
barbecue.addBricks(4)
