import UIKit

// You can make any parameter variadic by writing ... after its type. So, an Int parameter is a single integer, whereas Int... is zero or more integers – potentially hundreds.

// To try this out, let’s write a square() function that can square many numbers:
func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
square(numbers: 1, 2, 3, 4, 5)


// Examples
//Which of these are true about variadic functions?
/*
 Variadic parameters are converted into arrays inside your function
 
 Variadic parameters can potentially receive zero values
 
 You can write your own variadic functions
 
 print() is a variadic function
 
 Variadic parameters can potentially receive hundreds of values
 
 A variadic parameter is written with three dots after its type: Int...
 */
