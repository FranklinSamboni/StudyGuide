import UIKit

print("Hello World")

// MARK: declaring Constants and variables
let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0

var x = 0.0, y = 0.0, z = 0.0

// MARK: Type Annotations
var welcomeMessage: String
welcomeMessage = "Hello"

var red, green, blue: Double
let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"

// MARK: Naming Constants and variables
var frienlyWelcome = "Hello!"
frienlyWelcome = "Bonjour!"

let languajeName = "Swift"
//languajeName = // Error -> "Swift++" Can't do that because is let constant

// MARK: Printing
print(frienlyWelcome)
print("The current value of friendlyWelcome is \(frienlyWelcome)")

// MARK: COMMENTS

// This is a comment.
/* This is also a comment
 but is written over multiple lines.*/

/* This is the start of the first multiline comment.
 /* This is the second, nested multiline comment. */
 This is the end of the first multiline comment. */

// MARK: Semicolns
let cat = "🐱"; print(cat)

// MARK: Integers
let minValue8 = UInt8.min
let maxValue8 = UInt8.max

let minValue16 = UInt16.min
let maxValue16 = UInt16.max

let minValue32 = UInt32.min
let maxValue32 = UInt32.max

let minValue64 = UInt64.min
let maxValue64 = UInt64.max

//MARK: Floating Number
let floatNumber: Float = 2.12333    // -> Float represents a 32-bit floating-point number.
let doubleNumber: Double = 123.323  // -> Double represents a 64-bit floating-point number.

// MARK: Type Safety and Type Inference

let meaningOfLife = 42 // meaningOfLife is inferred to be of type Int
let pi = 3.14159 // pi is inferred to be of type Double
let anotherPi = 3 + 0.14159 // anotherPi is also inferred to be of type Double

// MARK: Numeric Literals

let decimalInteger = 17
let binaryInteger = 0b10001 // 17 in binary notation
let octalInteger = 0o21 // 17 in octal notation
let hexadecialInteger = 0x11 // 17 in hexadecimal notation

// 1.25e2 means 1.25 x 10^2
// 1.25e-2 means 1.25 x 10^-2

// 0xFp2 means 15 x 2^2 or 60.0
// 0xFp-2 means 15 x 2^-2 or 3.75

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0  // 0xC.3 x 2^0 -> 0xC.3 x 1 -> 0xC.3 = dec(12.{3/16}) = dec(12.1875)

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

// MARK: Integer Conversion

// Error
//let cannotBeNegative : UInt8 = -1
//let tooBig : UInt8 = UInt8.max + 1

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi2 = Double(three) + pointOneFourOneFiveNine

let integerPi = Int(pi2)

// MARK: Type Aliases
// Define an alternative name for an existing type

typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min

// MARK: Booleans

let orangesAreOrange = true
let turnipsAreDelicious = false

if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
} else {
    print("Eww, turnips are horrible.")
}

let i =  1

/*if i { -- i Not Boolean
 }*/

if i == 1 {
    // This example compile successfully
}

// MARK: Tuples
// Tuples group multiple values into a single compound value


let http404Error = (404, "Not Found")

let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")

let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")

print("The status code is \(http404Error.0)")
print("The status message is \(http404Error.1)")

let http200Status = (statusCode: 200, description:"OK")
print("The status code is \(http200Status.statusCode)")
print("The status message is \(http200Status.description)")


// MARK: Optionals

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

print(convertedNumber ?? 0)

var serverResponseCode : Int?  = 404
serverResponseCode = nil

var surveyAnswer: String?

if convertedNumber != nil {
    print("convertedNumber contains some integer value.")
    print("convertedNumber has an integer value of \(convertedNumber!)")
}

if let actualNumner = Int(possibleNumber){
    print("The Stirng \"\(possibleNumber)\" has an integer value  of \(actualNumner)")
}
else{
    print("The string \"\(possibleNumber)\" cloud not be converted to an integer")
}

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100 ")
}

if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}

let possibleString: String? = "An optional string."
let forcedString: String = possibleString!

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString

if assumedString != nil {
    print(assumedString!)
}

if let definiteString = assumedString {
    print(definiteString)
}

// MARK: Error Handling

func canThrowAnError() throws {
    // This function may or may not throw an error
}

do {
  try canThrowAnError()
} catch {
    print(error.localizedDescription)
}


func makeASandwich() throws {
}

func eatASandwich() {
}

func washDishes() {
}

func buyGroceries(){
    
}

//do {
//    try makeASandwich()
//    eatASandwich()
//} catch SandwichError.outOfCleanDishes {
//    washDishes()
//} catch SandwichError.missingIngredient {
//    buyGroceries()
//}


// MARK: Assetions and preconditions

let age = 3
assert(age >= 0, "A person's age can't be less than zero.")

assert(age >= 0)

if age > 10 {
    print("You can ride the roller-coaster or the ferris wheel.")
} else if age >= 0 {
    print("You can ride the ferris wheel.")
} else {
    assertionFailure("A person's age can't be less than zero.")
}

let index = 1
precondition(index > 0, "Index must be greater than zero.")
