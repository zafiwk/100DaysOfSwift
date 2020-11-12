import UIKit

func username(for id: Int) -> String? {
    if id == 1 {
        return "Florentino Lopez"
    } else {
        return nil
    }
}
let user = username(for: 15) ?? "Anonymous"


// Examples
let lightsaberColor: String? = "green"
let color = lightsaberColor ?? "blue"

var captain: String? = "Kathryn Janeway"
let name = captain ?? "Anonymous"


let planetNumber: Int? = 426
var destination = planetNumber ?? 3


let distanceRan: Double? = 0.5
let distance: Double = distanceRan ?? 0


var userOptedIn: Bool? = nil
var optedIn = userOptedIn ?? false


var selectedYear: Int? = nil
let actualYear = selectedYear ?? 1989
