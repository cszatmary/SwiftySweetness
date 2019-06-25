# Extensions

### **Table of Contents**
- [Any](#any)
    + [unwrap](#unwrap)
- [Array](#array)
    + [+=](#+=)
    + [-=](#-=)
    + [replace](#replace)
    + [binarySearch](#binarysearch)
- [Bool](#bool)
    + [intValue](#intvalue)
- [Double](#double)
    + [isNegative](#double.isnegative)
    + [**](#double.**)
    + [**=](#double.**=)
    + [roundTo](#roundto)
- [Int](#int)
    + [isPalindromic](#ispalindromic)
    + [isNegative](#int.isnegative)
    + [numberOfDigits](#numberofdigits)
    + [isPrime](#isprime)
    + [**](#int.**)
    + [**=](#int.**=)
    + [reversed](#reversed)
    + [digit](#digit)
- [Optional](#optional)
    + [hasValue](#hasvalue)
- [String](#string)
    + [trimmed](#trimmed)
    + [subscript](#subscript)
    + [char](#char)
    + [paddingStart](#paddingstart)
    + [paddingEnd](#paddingend)
    + [splittingCamelCase](#splittingcamelcase)
    + [initials](#initials)

## Any

### unwrap
Unwraps an optional value contained within a variable of type `Any` and returns the value. If the value is `nil` the function returns `nil`.

```swift
let value: Int? = 10
let wrapped = value as Any

let unwrapped = unwrap(any: wrapped) as? Int
```

## Array

### +=
`+=` is syntactic sugar for `append`. It appends the value on the righthand side to the array.

```swift
var array = [1, 2, 3]
array += 4 // [1, 2, 3, 4]
```

### -=
Removes the element at the specified index from the given array and returns it.

```swift
var array = [1, 2, 3]
let removed = array -= 2 // 3, array == [1, 2]
```

### replace
Replaces the value at the specified index in the array and returns the old value.

```swift
var array = [1, 2, 3]
let removed = array.replace(newElement: 20, at: 1) // 2
// array == [1, 20, 3]
```

### binarySearch
Finds the index of an element in the array using binary search.

***NOTE:*** This method requires that the array be sorted and that the elements conform to the `Comparable` protocol.

```swift
let array = [1, 5, 19, 25, 39, 67, 85]

let index = array.binarySearch(for: 19) // 2
```

## Bool

### intValue
Returns the int value associated with the bool, i.e. `1` for `true` and `0` for `false`.

```swift
let int = true.boolValue // 1
```

## Double

### Double.isNegative
A `Bool` property indicating whether or not the given `Double` is negative.

```swift
10.0.isNegative // false
-10.0.isNegative // true
```

### Double.**
A shorthand for `pow()`.

```swift
let power = 2.0 ** 4.0 // 16.0
```

### Double.**=
Calculates the power and assigns it to the lefthand side

```swift
var num = 3.0
num **= 3.0 // 27.0
```

### roundTo
Rounds the double to the given number of decimal places.

```swift
let double = 12.3489345
let rounded = double.roundTo(places: 2) // 12.35
```

## Int

### isPalindromic
A boolean value indicating whether the `Int` is a palindrome.

```swift
12345.isPalindromic // false
12321.isPalindromic // true
```

### Int.isNegative
A `Bool` property indicating whether or not the given `Int` is negative.

```swift
10.isNegative // false
-10.isNegative // true
```

### numberOfDigits
The number of digits in the `Int`.

```swift
12345.numberOfDigits // 5
```

### isPrime
A `Bool` property indicating whether or not the `Int` is a prime number.

```swift
31.isPrime // true
32.isPrime // false
```

### Int.**
A shorthand for `pow()`.

```swift
let power = 2 ** 4 // 16
```

### Int.**=
Calculates the power and assigns it to the lefthand side

```swift
var num = 3
num **= 3 // 27
```

### reversed
Reverses the order of the digits and returns a new `Int`.

```swift
let reversed = 12345.reversed() // 54321
```

### digit
Returns the digit at the specified index.

```swift
let digit = 12345.digit(at: 3) // 4
```

## Optional

### hasValue
A `Bool` property indicating whether or not the `Optional` has a value (i.e. is not `nil`).

```
let optional: Int? = 10
optional.hasValue // true
```

## String

### trimmed
Returns a trimmed version of the string by removing all leading and trailing whitespace and newlines.

```swift
let str = "      \n\nMy String\n\n    \n"
str.trimmed // "My String"
```

### subscript
Returns the character at the given index of a string or returns the substring within a given range.

```swift
let str = "Hello world!"
str[2] // 'l'
str[2..<7] // "llo w"
str[2...7] // "llo wo"
```

### char
Returns the character at the given index of a string.

```swift
let string = "hello world"
let char = string.char(at: 2) // "l"
```

### paddingStart
Applies padding to the start of the string until it reaches the specified length.

```swift
let string = "hello"
let padded = string.paddingStart(with: "$ABC", toLength: 10) // "$ABC$hello"
```

### paddingEnd
Applies padding to the end of the string until it reaches the specified length.

```swift
let string = "hello"
let padded = string.paddingEnd(with: "$ABC", toLength: 10) // "hello$ABC$"
```

### splittingCamelCase
Splits a camel cased string.

```swift
let string = "camelCaseWord"
let split = string.splittingCamelCase() // "camel Case Word"
```

### initials
Returns the first letter of each word in the string.

```swift
let string = "Next Step"
let initials = string.initials() // "NS"
```
