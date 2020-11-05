import UIKit

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]
favoriteIceCream["Paul"]
favoriteIceCream["Charlotte", default: "Unknown"]

let results = [
    "english": 100,
    "french": 85,
    "geography": 75
]
let historyResult = results["history", default: 0]


// Examples
let planets = [1: "Mercury", 2: "Venus"]
let venus = planets[2, default: "Planet X"]

let capitals = ["Engalnd": "London", "London": "Cardiff"]
let scotlandCapital = capitals["Scotland"]

let olympics = [2012: "London", 2016: "Rio", 2020: "Tokyo"]
let london = olympics[2012]

let books = ["Austen": "Pride and Prejudice"]
let dickens = books["Dickens", default: "Unknown"]

let albums = ["Prince": "Purple Rain"]
let beatles = albums["Beatles"]

let characters = ["Captain": "Malcolm", "Engineer": "Kaylee"]
let captain = characters["Captain"]
