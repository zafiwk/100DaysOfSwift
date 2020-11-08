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


// Examples
// Which of the following are true?
/*
 Use do to start a section of code that calls throwing functions.
 
 You can mark any function as throwing
 
 If any errors are thrown, execution immediately jumps to the catch block
 
 Throwing functions must be marked with throws
 
 Throwing functions must be called using try
 */
