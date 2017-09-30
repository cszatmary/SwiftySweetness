# SwiftySweetness

[![Language Swift](https://img.shields.io/badge/Language-Swift%204.0-orange.svg?style=flat)](https://swift.org)
[![Version](https://img.shields.io/cocoapods/v/SwiftySweetness.svg?style=flat)](http://cocoapods.org/pods/SwiftySweetness)
[![License](https://img.shields.io/cocoapods/l/SwiftySweetness.svg?style=flat)](http://cocoapods.org/pods/SwiftySweetness)
[![Platform](https://img.shields.io/cocoapods/p/SwiftySweetness.svg?style=flat)](http://cocoapods.org/pods/SwiftySweetness)
[![Swift Package Manager compatible](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg)](https://github.com/apple/swift-package-manager)

**SwiftySweetness** is a list of extensions that provde extra functionality and syntactic sugar.

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

### Encodable & Decodable
Swift 4 makes encoding and decoding JSON easy with the `Encodable` and `Decodable` protocols:
```swift
let json = JSONEncoder().encode(myStruct)
let decodedStruct = JSONDecoder().decode(MyStruct.self, from: json)
```
But `SwiftySweetness` makes this even easier:
```swift
let json = myStruct.encodeToJSON()
let decodedStruct = MyStruct.decodeFrom(json: json)
```

### UIColor
Construct a `UIColor` with rgb values from 0 to 255:
```swift
let color = UIColor(r: 5 g: 185, b: 255)
```

Construct a UIColor from a hex number:
```swift
let color = UIColor(hex: 0x02B8FF)
```
Or a hex string:
```swift
let color = UIColor(hex: "02B8FF")
```

### UIWindow
Easily create and show a new `UIWindow` with a given `UIViewController`:
```swift
let window = UIWindow(rootViewController: ViewController()) // UIScreen.main.bounds is the default frame
```
or
```swift
let window = UIWindow(frame: myRect, rootViewController: ViewController())
```

### UIViewController
Easily dismiss the keyboard when the user taps the screen:
```swift
viewController.hideKeyboardWhenTappedAround()
```

Easily display a `UIAlertController` insude your `UIViewController`:
```swift
var actions = [UIAlertActions]()
...
viewController.displayAlertController(title: "Important", message: "This is an alert!", actions: actions) // A completion closure can be added if necessary
```
### And much more!

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

### Requirements
* iOS 9.0+
* Swift 4

### CocoaPods

SwiftySweetness is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SwiftySweetness'
```

### Swift Package Manager

SwiftySweetness is available through the [Swift Package Manager](https://swift.org/package-manager/)
To install it, add the following to your `Package.swift`.

```swift
import PackageDescription

let package = Package(
    name: "MyProject",
    dependencies: [
        .package(url: "https://github.com/cszatma/SwiftySweetness.git", from: "1.1.0")
    ]
)
```
**NOTE:** The Swift Package Manager currently does not support UIKit. Therefore the UIKit extensions will not be present if this method is used.

## Contributing
Open an issue or submit a pull request.
