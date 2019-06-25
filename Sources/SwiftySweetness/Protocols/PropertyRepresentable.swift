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

/// Types conforming to this protocol are able to generate an array containing all their property names and values.
public protocol PropertyRepresentable {
    /// Returns an array of all the type's properties.
    func propertiesArray() -> [Property]
    /// Returns an array of all the type's property labels.
    func propertyLabels() -> [String]
    /// Returns an array of all the type's property values.
    func propertyValues() -> [Any]
    /// Returns a dictionary where the keys are the property labels and the values are the property values.
    func propertiesDictionary() -> [String: Any]
}

public extension PropertyRepresentable {
    func propertiesArray() -> [Property] {
        return Mirror(reflecting: self).children.map { (label: $0.label ?? "N/A", value: $0.value) }
    }

    func propertyLabels() -> [String] {
        return propertiesArray().map { $0.label }
    }

    func propertyValues() -> [Any] {
        return propertiesArray().map { $0.value }
    }

    func propertiesDictionary() -> [String: Any] {
        var dictionary = [String: Any]()
        Mirror(reflecting: self).children.forEach { dictionary[$0.label ?? "N/A \($0.value)"] = $0.value }
        return dictionary
    }
}
