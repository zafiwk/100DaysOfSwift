import UIKit

class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]
for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}


class Person {
    var name = "Anonymous"
}
class Customer: Person {
    var id = 12345
}
class Employee: Person {
    var salary = 50_000
}
let customer = Customer()
let employee = Employee()
let people = [customer, employee]
for person in people {
    if let customer = person as? Customer {
        print("I'm a customer, with id \(customer.id)")
    } else if let employee = person as? Employee {
        print("I'm an employee, earning $\(employee.salary)")
    }
}


// Examples
class Person {
    var name = "Taylor Swift"
}
class User: Person { }
let taylor = User()
if let user = taylor as? User {
    print("\(user.name) is a user.")
}


let flavor = "apple and mango"
if let taste = flavor as? String {
    print("We added \(taste).")
}


class Transport { }
class Train: Transport {
    var type = "public"
}
class Car: Transport {
    var type = "private"
}
let travelPlans = [Train(), Car(), Train()]
for plan in travelPlans {
    if let train = plan as? Train {
        print("We're taking \(train.type) transport.")
    }
}


class CitrusFruit {
    var averagePH = 3.0
}
class Orange: CitrusFruit { }
let citrus = Orange()
if let orange = citrus as? Orange {
    print("This orange has a pH of \(orange.averagePH).")
}


class Bird {
    var wingspan: Double? = nil
}
class Eagle: Bird { }
let bird = Eagle()
if let eagle = bird as? Eagle {
    if let wingspan = eagle.wingspan {
        print("The wingspan is \(wingspan).")
    } else {
        print("This bird has an unknown wingspan.")
    }
}



