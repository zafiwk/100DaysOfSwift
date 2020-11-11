import UIKit


protocol Identifiable {
    var id: String {get set }
}
struct User: Identifiable {
    var id: String
}
func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}


func buy(_ item: Purchaseable) {
    print("I'm buying \(item.name)")
}
protocol Purchaseable {
    var name: String { get set }
}

struct Book: Purchaseable {
    var name: String
    var author: String
}

struct Movie: Purchaseable {
    var name: String
    var actors: [String]
}


// Examples
// This is a valid protocol – true or false?
protocol Purchaseable2 {
    var price: Double { get set }
    var currency: String { get set }
}


protocol Climbable {
    var height: Double { get }
    var gradient: Int { get }
}


protocol Learnable {
    var difficulty: Int { get }
}


protocol Washable {
    var dirtinessLevel: Int { get set }
}


protocol Singable {
    var lyrics: [String] { get set }
    var notes: [String] { get set }
}


protocol Plantable {
    var requirements: [String] { get set }
}


