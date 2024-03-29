import UIKit

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation { }

/*
protocol Computer {
    var price: Double {get set}
    var weight: Int {get set}
    var cpu: String {get set}
    var memory: Int {get set}
    var storage: Int {get set}
}

protocol Laptop {
    var price: Double {get set}
    var weight: Int {get set}
    var cpu: String {get set}
    var memory: String {get set}
    var storage: Int {get set}
    var screenSize: Int {get set}
}
*/

protocol Product {
    var price: Double {get set}
    var weight: Int {get set}
}

protocol Computer: Product {
    var cpu: String {get set}
    var meory: Int {get set}
    var storage: Int {get set}
}

protocol Laptop: Computer {
    var screenZise: Int {get set}
}


// Examples
protocol MakesDiagnoses {
    func evaluate(patient: String) -> String
}
protocol PrescribesMedicine {
    func prescribe(drug: String)
}
protocol Doctor: MakesDiagnoses, PrescribesMedicine { }


protocol CarriesPassengers {
    var passengerCount: Int { get set }
}
protocol CarriesCargo {
    var cargoCapacity: Int { get set }
}
protocol Boat: CarriesPassengers, CarriesCargo {
    var name: String { get set }
}


protocol GivesOrders {
    func makeItSo()
}
protocol OrdersDrinks {
    func teaEarlGrey(hot: Bool)
}
protocol StarshipCaptain: GivesOrders, OrdersDrinks { }


protocol HasMindTricks {
    func waveHandMystically()
}
protocol UsesForce {
    func raiseXWing()
}
protocol JediKnight: HasMindTricks, UsesForce { }


protocol LikesTravel {
    func visit(place: String)
}
protocol BuySouvenirs {
    func buy(item: String)
}
protocol Tourist: LikesTravel, BuySouvenirs { }


protocol TimeTraveler {
    func travel(to year: Int)
}
protocol HuntsPeople {
    func locateJohnConnor()
}
protocol Terminator: TimeTraveler, HuntsPeople { }
