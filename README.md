# SwiftySweetness

[![Language Swift](https://img.shields.io/badge/Language-Swift%204.0-orange.svg?style=flat)](https://swift.org)
[![Version](https://img.shields.io/cocoapods/v/SwiftySweetness.svg?style=flat)](http://cocoapods.org/pods/SwiftySweetness)
[![License](https://img.shields.io/cocoapods/l/SwiftySweetness.svg?style=flat)](http://cocoapods.org/pods/SwiftySweetness)
[![Platform](https://img.shields.io/cocoapods/p/SwiftySweetness.svg?style=flat)](http://cocoapods.org/pods/SwiftySweetness)
[![Swift Package Manager compatible](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg)](https://github.com/apple/swift-package-manager)

**SwiftySweetness** is a list of extensions that provides extra functionality and syntactic sugar.

## Examples

### Int & Double
Power operator `**`:
```swift
let power = 2 ** 4 // 16
```
Or assign the result to one of the variable arguments:
```swift
var num = 3
num **= 3 // 27
```
`isNegative` Bool property indicating whether or not the given number is negative:
```swift
if num.isNegative {
    ...
}
```

### Optionals
`hasValue` property to quickly check if the optional is `nil` or not:
```swift
var myOptional: Int? = nil
myOptional.hasValue // false
```

### Strings
Use subscripts to get character at a given index:
```swift
let str = "Hello world!"
str[2] // 'l'
```
Or pass a range to get a substring:
```swift
str[2..<7] // "llo w"
str[2...7] // "llo wo"
```

`trimmed` returns a trimmed version of the string without leading or trailing whitespaces and newlines.
```swift
let str = "      \n\nMy String\n\n    \n"
str.trimmed // "My String"
```

`splitCamelCase()` splits a camel cased string.
```swift
let str = "thisIsACamelCasedString"
str.splitCamelCase() // "this Is A Camel Cased String"
```

`initials()` returns the first letter of each word in the string.
```swift
let str = "Hello World"
str.initials() // "HW"
```

### Encodable & Decodable
Swift 4 makes encoding and decoding JSON easy with the `Encodable` and `Decodable` protocols:
```swift
let json = JSONEncoder().encode(myStruct)
let decodedStruct = JSONDecoder().decode(MyStruct.self, from: json)
```
But `SwiftySweetness` makes this even easier:
```swift
let json = myStruct.encode(to: .json)
let decodedStruct = MyStruct.decode(from: json, ofType: .json)
```

### PropertyRepresentable
The `PropertyRepresentable` allows any conforming type to generate an array containing all its properties.
```swift
struct Person: PropertyRepresentable {
    var name: String
    var age: Int
}

let person = Person(name: "John Doe", age: "20")
person.properties() // [(label: "name", value: "John Doe"), (label: "age", value: 20)]
person.propertyLabels() // ["name", "age"]
person.propertyValues() // ["John Doe", 20]
person.propertiesDictionary() // ["name": "John Doe", "age": 20]
```

### Pipes
SwiftySweetness offers multiple pipe operators. Piping is supported for all unary, binary, and ternary functions.
`|>` is the standard pipe operator. It will pipe the input on the left to the function on the right.
```swift
func add(_ x: Int, _ y: Int) -> Int {
    return x + y
}

let num = 4
num |> (add, -10) |> abs // 6
```

The `|>?` operator takes an optional and either pipes it to the given function if it has a value or returns nil if the value is nil. Note that the value returned is an optional.
```swift
let optional1: Int? = 4
optional1 |>? (add, 6) // 10 NOTE: This is of type Int?

let optional2: Int? = nil
optional2 |>? (add, 6) // nil
```

The `|>!` operator force-unwraps an optional and then pipes it to the given function. This should only be used when you are certain the value is not nil!
```swift
let optional1: Int? = 4
optional1 |>! (add, 6) // 10 NOTE: This is of type Int since the value was unwrapped

let optional2: Int? = nil
optional2 |>! (add, 6) // fatal error: unexpectedly found nil while unwrapping an Optional value
```

### And much more!

Use it in a project to see what's available.

## Installation

### Requirements
* iOS 8.0+
* macOS 10.9+
* tvOS 9.0+
* watchOS  2.0+
* Linux
* Swift 4

### CocoaPods

SwiftySweetness is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SwiftySweetness', '~> 1.4'
```

### Swift Package Manager

SwiftySweetness is available through the [Swift Package Manager](https://swift.org/package-manager/)
To install it, add the following to your `Package.swift`.

```swift
import PackageDescription

let package = Package(
    name: "MyProject",
    dependencies: [
        .package(url: "https://github.com/cszatma/SwiftySweetness.git", from: "1.4.0")
    ]
)
```

## Contributing
Open an issue or submit a pull request.
