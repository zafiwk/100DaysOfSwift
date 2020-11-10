import UIKit

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}


struct Person {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}
var tino = Person(name: "Tino")
tino.familyTree


// Examples
/*
 Lazy properties can be used inside any kind of structs.
 
 Lazy properties are created using the lazy keyword.
 
 Lazy properties are a performance optimization
 
 A lazy property can be an instance of a different struct
 
 You can assign lazy properties by calling a method
 
 Lazy properties are created only when first accessed
 */
