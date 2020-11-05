import UIKit


enum Activity {
    case bored
    case running
    case talking
    case singing
}
let resul = Activity.talking

// Enum associated values
enum Activity2 {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
let talking = Activity2.talking(topic: "football")

enum Weather {
    case sunny
    case windy(speed: Int)
    case rainy(chance: Int, amount: Int)
}
let clime = Weather.rainy(chance: 100, amount: 40)


// Examples
enum Building { case skyscraper(floors: Int)}

enum Sport { case running(distance: Int)}

enum CharacterClass { case paladin(level: Int)}

enum Instruments { case piano(isElectric: Bool)}

enum Forecast { case cloudy(coverage: Int)}

enum Activity3 { case reading(bookTitle: String)}
