# Classes

### **Table of Contents**
- [If](#if)
- [Switch](#swift)

## If
Constructs an `if` expression that evaluates to a value. This class lets you assign a value to a variable based on a certain conditon.

```swift
let str = If(num % 15 == 0) {
        "fizzbuzz"
    }.elseIf(num % 3 == 0) {
        "fizz"
    }.elseIf(num % 5 == 0) {
        "buzz"
    }.else {
        "\(num)"
    }
```

The `If` initializer takes a condition and a closure that returns a value. It can then have any number of `elseIf`s chained onto it. All `If` instances must end with an `else` which will cause the conditions to be evaluated and return the appropriate result.

## Switch
Constructs a `switch` expression that evalutes to a value. This class lets yo assign a value to a variable based on a matching case.

```swift
let message = Switch(action)
    .case("start") { "Starting..." }
    .case("stop") { "Stopping..." }
    .case("pause") { "Pausing..." }
    .default { "Unknown Action" }
```

The `Switch` initializer takes a value that conforms to the `Equatable` protocol which all cases will be compared against. It can then have any number of `case`s chained onto it. All `Switch` instances must end with a `default` which will cause the cases to be evaluated and return the appropriate result.
