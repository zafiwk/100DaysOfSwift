import UIKit

// The third difference between classes and structs is how they are copied. When you copy a struct, both the original and the copy are different things – changing one won’t change the other.


// For example, here’s a simple Singer class that has a name property with a default value:
class Singer {
    var name = "Florentino López"
}


// If we create an instance of that class and prints its name, we’ll get “Taylor Swift”:
var singer = Singer()
print(singer.name)


// Now let’s create a second variable from the first one and change its name:
var singerCopy = singer
singerCopy.name = "Luis López"
print(singer.name)


// On the other hand, if Singer were a struct then we would get “Taylor Swift” printed a second time:
struct Singer2 {
    var name = "Taylor Swift"
}


// Examples
// his code prints the same output twice – true or false?
class Starship {
    var maxWarp = 9.0
}
var voyager = Starship()
voyager.maxWarp = 9.975
var enterprise = voyager
enterprise.maxWarp = 9.6
print(voyager.maxWarp)
print(enterprise.maxWarp)


class Author {
    var name = "Anonymous"
}
var dickens = Author()
dickens.name = "Charles Dickens"
var austen = dickens
austen.name = "Jane Austen"
print(dickens.name)
print(austen.name)


class Hater {
    var isHating = true
}
var hater1 = Hater()
var hater2 = hater1
hater1.isHating = false
print(hater1.isHating)
print(hater2.isHating)


class Hospital {
    var onCallStaff = [String]()
}
var londonCentral = Hospital()
var londonWest = londonCentral
londonCentral.onCallStaff.append("Dr Harlan")
londonWest.onCallStaff.append("Dr Haskins")
print(londonCentral.onCallStaff.count)
print(londonWest.onCallStaff.count)


class Magazine {
    var pageCount = 132
}
var example = Magazine()
var wired = example
wired.pageCount = 164
var vogue = example
vogue.pageCount = 128
print(wired.pageCount)
print(vogue.pageCount)


class Hairdresser {
    var clients = [String]()
}
var tim = Hairdresser()
tim.clients.append("Jess")
var dave = tim
dave.clients.append("Sam")
print(tim.clients.count)
print(dave.clients.count)



