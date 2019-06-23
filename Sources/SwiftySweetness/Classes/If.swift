//    Copyright (c) 2019 Christopher Szatmary <cs@christopherszatmary.com>
//
//    Permission is hereby granted, free of charge, to any person obtaining a copy
//    of this software and associated documentation files (the "Software"), to deal
//    in the Software without restriction, including without limitation the rights
//    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//    copies of the Software, and to permit persons to whom the Software is
//    furnished to do so, subject to the following conditions:
//
//    The above copyright notice and this permission notice shall be included in
//    all copies or substantial portions of the Software.
//
//    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//    THE SOFTWARE.

import Foundation

/**
 The `If` class allows for the creation of if statement expressions.

 Example:

     let str = If(num % 15 == 0) {
            "fizzbuzz"
        }.elseIf(num % 3 == 0) {
            "fizz"
        }.elseIf(num % 5 == 0) {
            "buzz"
        }.else {
            "\(num)"
        }
 */
public final class If<T> {
    private var conditions: [Condition<T>] = []

    /**
     Creates a new `If` instance with the given condition and action.
     - parameter condition: A boolean expression to test.
     - parameter action: A closure to call if `condition` is `true`.
     */
    public init(_ condition: Bool, _ action: @escaping () -> T) {
        conditions.append(Condition(value: condition, action: action))
    }

    /**
     Adds an `else if` branch to an `If` instance.
     - parameter condition: A boolean expression to test.
     - parameter action: A closure to call if `condition` is `true`.
     - returns: The `If` instance to allow chaining additional else ifs.
     */
    public func elseIf(_ condition: Bool, _ action: @escaping () -> T) -> If<T> {
        conditions.append(Condition(value: condition, action: action))
        return self
    }

    /**
     Adds an `else` branch to the `If` instance.
     This will also evaluate the conditions and return the appropriate result.
     - parameter action: The action to perform if the else is reached.
     - returns: The result of the if statement.
     */
    public func `else`(_ action: @escaping () -> T) -> T {
        conditions.append(Condition(value: true, action: action))
        return execute()
    }

    private func execute() -> T {
        return conditions.first(where: { $0.value })!.action()
    }
}

struct Condition<T> {
    let value: Bool
    let action: () -> T
}
