//    Copyright (c) 2017 Christopher Szatmary <cs@christopherszatmary.com>
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

public extension Double {
    
    // - MARK: Properties
    
    /// Returns a Bool indicating whether or not the Double is negative.
    public var isNegative: Bool {
        guard self < 0 else {
            return false
        }
        return true
    }
    
    // - MARK: Methods
    
    /// Raises value of Double on left to power of Double on right.
    public static func ** (lhs: Double, rhs: Double) -> Double {
        return pow(lhs, rhs)
    }
    
    /// Power assignment statement.
    public static func **= (lhs: inout Double, rhs: Double) {
        lhs = lhs ** rhs
    }
    
    /// Rounds the Double to decimal places value.
    /// - parameter places: The number of decimal places to round the Double to.
    /// - returns: The rounded Double.
    public func roundTo(places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
    
}
