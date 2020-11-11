import UIKit

final class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}


// Examples
// This code defines two valid classes using inheritance – true or false?
class Magazine { }
final class FashionMagazine: Magazine { }


class Game { }
final class BoardGame: Game { }


class Furniture { }
class Couch: Furniture { }


class Shoes { }
final class KittenHeels: Shoes { }


class Player { }
class Barbarian: Player { }


class Hat { }
class Fez: Hat { }
