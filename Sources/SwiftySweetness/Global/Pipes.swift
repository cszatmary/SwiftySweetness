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

// MARK: - Pipes

/// Passes the value to the left of the operator as the parameter of the unary function to the right of the operator.
public func |> <A,X>(lhs: A, rhs: UnaryFunction<A, X>) -> X {
    return rhs(lhs)
}

/// Passes the value to the left of the operator as the first parameter of the binary function to the right of the operator.
public func |> <A,B,X>(lhs: A, rhs: (BinaryFunction<A, B, X>, B)) -> X {
    return rhs.0(lhs, rhs.1)
}

/// Passes the value to the left of the operator as the first parameter of the ternary function to the right of the operator.
public func |> <A,B,C,X>(lhs: A, rhs: (TernaryFunction<A, B, C, X>, B, C)) -> X {
    return rhs.0(lhs, rhs.1, rhs.2)
}

// MARK: - Optional Pipes

/// Passes the optional value to the left of the operator as the parameter of the unary function to the right of the operator.
public func |>? <A,X>(lhs: A?, rhs: UnaryFunction<A, X>) -> X? {
    return lhs.map(rhs)
}

/// Passes the optional value to the left of the operator as the first parameter of the binary function to the right of the operator.
public func |>? <A,B,X>(lhs: A?, rhs: (BinaryFunction<A, B, X>, B)) -> X? {
    return lhs.map { rhs.0($0, rhs.1) }
}

/// Passes the optional value to the left of the operator as the first parameter of the ternary function to the right of the operator.
public func |>? <A,B,C,X>(lhs: A?, rhs: (TernaryFunction<A, B, C, X>, B, C)) -> X? {
    return lhs.map { rhs.0($0, rhs.1, rhs.2) }
}

// MARK: - Force-unwrap Pipes

/// Force-unwraps the optional value to the left of the operator and passes it as the parameter of the unary function to the right of the operator.
public func |>! <A,X>(lhs: A?, rhs: UnaryFunction<A, X>) -> X {
    return rhs(lhs!)
}

/// Force-unwraps the optional value to the left of the operator and passes it as the first parameter of the binary function to the right of the operator.
public func |>! <A,B,X>(lhs: A?, rhs: (BinaryFunction<A, B, X>, B)) -> X {
    return rhs.0(lhs!, rhs.1)
}

/// Force-unwraps the optional value to the left of the operator and passes it as the first parameter of the ternary function to the right of the operator.
public func |>! <A,B,C,X>(lhs: A?, rhs: (TernaryFunction<A, B, C, X>, B, C)) -> X {
    return rhs.0(lhs!, rhs.1, rhs.2)
}
