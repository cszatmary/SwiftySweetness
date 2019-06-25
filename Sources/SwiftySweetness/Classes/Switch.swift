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
 The `Switch` class allows for the creation of switch statement expressions.

 Example:

     let message = Switch(action)
         .case("start") { "Starting..." }
         .case("stop") { "Stopping..." }
         .case("pause") { "Pausing..." }
         .default { "Unknown Action" }
 */
public final class Switch<T: Equatable, S> {
    private var value: T
    private var cases: [Case<T, S>] = []

    /**
     Creates a new `Switch` instead against the given value.
     - parameter value: The value to compare against.
     */
    public init(_ value: T) {
        self.value = value
    }

    /**
     Adds a `case` to the switch.
     - parameter value: The value to compare against.
     - parameter action: A closure to call if the case matches the value.
     - returns: The `Switch` instance to allow chaining additional cases.
     */
    public func `case`(_ value: T, _ action: @escaping () -> S) -> Switch<T, S> {
        cases.append(Case(value: value, action: action))
        return self
    }

    /**
     Adds an `default` case to the `Switch` instance.
     This will also evaluate the cases and return the appropriate result.
     - parameter action: The action to perform if the default is reached.
     - returns: The result of the switch statement.
     */
    public func `default`(_ action: @escaping () -> S) -> S {
        cases.append(Case(value: value, action: action))
        return execute()
    }

    private func execute() -> S {
        return cases.first(where: { $0.value == value })!.action()
    }
}

struct Case<T, S> {
    let value: T
    let action: () -> S
}
