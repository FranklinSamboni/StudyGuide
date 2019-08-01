import UIKit

var str = "Hello Basic Operators"

// MARK: Terminology
// Unary ->  - Unary prefix operators appear immediately before their target (such as !b)
//           - Unary postfx operators appear immediately after their target (such as c!)
// Binary -> - operators operate on two targets (such as 2 + 3) and are infix because they appear in between their two targets
// Ternary -> - operators operate on three targets. Like C, Swift has only one ternary operator (a ? b : c)

// MARK: Assigment Operator

let b = 10
var a = 5
a = b
// a is now equal to 10

let (x,y) = (1,2)
// x is equal to 1, and y is equal to 2

//if x = y {  } -> This is not valid, because x = y does not return a value

// MARK: Arithmetic Operators
1 + 2
5 - 3
2 * 3
10.0 / 2.5

"Hello, " + "world"

// MARK: Remainder Operator
// (a % b)

9 % 4

-9 % 4

let three = 3
let minusThree = -three
let plusThree = -minusThree

let minusSix = -6
let alsoMinusSix = +minusSix


var aa = 1
aa += 2

// MARK: Comparison Operators

// Equal to ==
// Not Equal to !=
// Greater tan >
// Less tan <
// Greater than or equal to >=
// Less Than or equal to <=

1 == 1
2 != 1
2 > 1
1 < 2
1 >= 1
2 <= 1

let name = "world"
if name == "world"{
    print("Hello, world")
} else {
    print("I'm sorry \(name), but I don't recognize you")
}

(1, "zebra") < (2,"apple") // true because 1 is less than 2; "zebran and "apple" are not compared
(3, "apple") < (3, "bird") // true because 3 is equal to 3, and "apple" is less than "bird"
(4, "dog") == (4, "dog") // true because 4 is equal to 4 and "dog" is equal to "dog"

("blue", -1) < ("purple", 1) // OK, evaluates to true
//("blue", false) < ("purple", true) // error


// MARK: Ternary Conditional Operator

let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)

// MARK: Nil-Coalescing Operator
// a != nil ? a! : b
let defaultColorName = "red"
var userDefinedColorName: String?   // defaults to nil

var colorNameToUse = userDefinedColorName ?? defaultColorName

// MARK: Range Operators

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}
// 1 times 5 is 5
// 2 times 5 is 10
// 3 times 5 is 15
// 4 times 5 is 20
// 5 times 5 is 25

let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}
// Person 1 is called Anna
// Person 2 is called Alex
// Person 3 is called Brian
// Person 4 is called Jack

for name in names[2...] {
    print(name)
}
// Brian
// Jack

for name in names[...2] {
    print(name)
}
// Anna
// Alex
// Brian

for name in names[..<2] {
    print(name)
}
// Anna
// Alex

let range = ...5
range.contains(7)   // false
range.contains(4)   // true
range.contains(-1)  // true

// MARK: Logical operators

//Logical NOT (!a)
//Logical AND (a && b)
//Logical OR (a || b)

let allowedEntry = false
if !allowedEntry {
    print("ACCESS DENIED")
}
// Prints "ACCESS DENIED"

let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// Prints "Welcome!"
