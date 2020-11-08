import UIKit

func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)


// Examples
// Which of these are true?
/*
 Regular parameters are passed into functions as constants
 
 Inout parameters must be variables
 
 Changing Inout parameters inside a function changes them outside too
 
 You can pass several parameters as inout if you want
 
 Inout parameters must be passed in using &
 
 Inout parameters are marked using the inout keyword
 */
