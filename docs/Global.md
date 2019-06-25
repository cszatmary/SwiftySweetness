# Global

### **Table of Contents**
- [Pipes](#pipes)
    + [Standard Pipes](#standard-pipes)
    + [Optional Pipes](#optional-pipes)
    + [Force Pipes](#force-pipes)

## Pipes
`SwiftySweetness` offers multiple pipe operators. Piping is supported for all unary, binary, and ternary functions.

### Standard Pipes
`|>` is the standard pipe operator. It will pipe the input on the left to the function on the right.
```swift
func add(_ x: Int, _ y: Int) -> Int {
    return x + y
}

let num = 4
num |> (add, -10) |> abs // 6
```

### Optional Pipes
The `|>?` operator takes an optional and either pipes it to the given function if it has a value or returns nil if the value is nil. Note that the value returned is an optional.
```swift
let optional1: Int? = 4
optional1 |>? (add, 6) // 10 NOTE: This is of type Int?

let optional2: Int? = nil
optional2 |>? (add, 6) // nil
```

### Force Pipes
The `|>!` operator force-unwraps an optional and then pipes it to the given function. This should only be used when you are certain the value is not nil!
```swift
let optional1: Int? = 4
optional1 |>! (add, 6) // 10 NOTE: This is of type Int since the value was unwrapped

let optional2: Int? = nil
optional2 |>! (add, 6) // fatal error: unexpectedly found nil while unwrapping an Optional value
```
