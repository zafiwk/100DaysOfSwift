import UIKit

/*
 Swift lets you create properties and methods that belong to a type, rather than to instances of a type.
 -> Swift calls these shared properties "static properties", and you create one just by using the static keyword.
*/
struct TaylorFan {
    static var favoriteSong = "Look What You Made Me Do"
    
    var name: String
    var age: Int
    
}
let fan = TaylorFan(name: "James", age: 25)
print(TaylorFan.favoriteSong)
