import UIKit

// The fourth difference between classes and structs is that classes can have deinitializers – code that gets run when an instance of a class is destroyed.

class Person {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive!")
    }
    
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    // And now for the deinitializer. This will be called when the Person instance is being destroyed
    // deinitializer
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}


// Examples
// his code will print a message when an instance of the type is destroyed – true or false?
class Job {
    deinit {
        print("I quit!")
    }
}


class IceCream {
    deinit {
        print("No more icecream :(")
    }
}


class Lightsaber {
    deinit {
        print("Fssshhp!")
    }
}


class DisneyMovie {
    deinit {
        print("Relax, there'll be another in a year.")
    }
}


class MagicSpell {
    deinit {
        print("Good job, Hermione!")
    }
}


class Firefly {
    deinit {
        print("I'm still annoyed that this was cancelled.")
    }
}
