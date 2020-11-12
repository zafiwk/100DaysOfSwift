import UIKit

enum PasswordError: Error {
    case obvious
}
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}


if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}
try! checkPassword("sekrit")
print("OK!")


// Examples
// Which of these are true about throwing functions?
/*
 When using try you must catch all errors that can be thrown.
 
 If you use try! and your call throws an error, your code crashes.
 
 Functions that throw errors must be marked throws.
 
 You can combine try? with if let
 
 Using try? converts a function's return value into an optional.
 
 If you use try you must either catch the error or mark your function as throws
 */
