import UIKit

protocol Identifiable {
    var id: String {get set}
    func identify()
}

extension Identifiable {
    func identify() {
        print("My ID is \(id)")
    }
}

struct User: Identifiable {
    var id: String
}

let tinillo = User(id: "Tinillo")
tinillo.identify()


// Examples
/*
 Protocols can mark properties as read-only or read-write
 
 You can write extensions for protocols to provide default implementations
 
 You can write extensions for Swift's built-in protocols
 
 Each type can conform to as many protocols as you want
 
 You can create one protocol by inheriting from others
 
 Protocols specify what methods and properties conforming types must have
 */
