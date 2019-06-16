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

public extension String {
    
    // - MARK: Properties
    
    /// Returns a trimmed version of the text without leading or trailing whitespace and newlines.
    var trimmed: String {
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    // - MARK: Methods
    
    /// Returns the character at the given index of a string.
    subscript (i: Int) -> Character {
        return self[index(startIndex, offsetBy: i)]
    }
    
    /// Returns a substring within the given Range of a string.
    subscript (r: Range<Int>) -> String {
        let start = index(startIndex, offsetBy: r.lowerBound)
        let end = index(startIndex, offsetBy: r.upperBound)
        return String(self[start..<end])
//        return String(self[Range(start ..< end)])
    }
    
    /// Returns a substring within the given ClosedRange of a string.
    subscript (r: ClosedRange<Int>) -> String {
        let start = index(startIndex, offsetBy: r.lowerBound)
        let end = index(startIndex, offsetBy: r.upperBound + 1)
        return String(self[start..<end])
    }
    
    /// Returns the character present at the given index in a string.
    /// - parameter index: The index of the character.
    /// - returns: The character at the given index.
    func char(at index: Int) -> Character {
        return self[index]
    }

    /**
     Applies padding to the start of the string until it reaches the specified length.
     - parameters:
         - string: The string to pad with.
         - length: The desired length of the string.
     - returns: The string with the applied padding at the start.
    */
    func padStart(with string: String = " ", toLength length: Int) -> String {
        let padCount = length - count
        guard padCount > 0 else { return self }

        let padString = string + String(repeating: string, count: padCount / string.count)

        return padString[0..<padCount] + self
    }

    /**
     Applies padding to the end of the string until it reaches the specified length.
     - parameters:
         - string: The string to pad with.
         - length: The desired length of the string.
     - returns: The string with the applied padding at the end.
     */
    func padEnd(with string: String = " ", toLength length: Int) -> String {
        let padCount = length - count
        guard padCount > 0 else { return self }

        let padString = string + String(repeating: string, count: padCount / string.count)

        return self + padString[0..<padCount]
    }
    
    /// Splits a camel cased string. For example, the string "thisIsCamelCased" would return "this Is Camel Cased".
    func splitCamelCase() -> String {
        return unicodeScalars.compactMap({ CharacterSet.uppercaseLetters.contains($0) ? " \($0)" : String($0) }).joined()
    }
    
    /// Returns the first letter of each word in the string. For example, the string "Hello World" would return "HW".
    func initials() -> String {
        guard !self.isEmpty else { return "" }
        return components(separatedBy: " ").map({ String($0.first!) }).filter({ CharacterSet.letters.contains($0.unicodeScalars.first!) }).joined(separator: "")
    }
}
