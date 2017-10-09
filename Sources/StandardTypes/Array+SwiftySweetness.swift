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

public extension Array {
    /**
     Appends an element to the given array.
     - parameters:
         - lhs: The array to append the element to.
         - rhs: The element to be appended.
     */
    public static func += (lhs: inout Array, rhs: Element) {
        lhs.append(rhs)
    }
    
    /**
     Removes an element from the given array at the specified index.
     - parameters:
         - lhs: The array to remove the element from.
         - rhs: The index of the element to remove.
     - returns: The element that was removed from the array.
     */
    public static func -= (lhs: inout Array, rhs: Int) -> Element {
        return lhs.remove(at: rhs)
    }
    
    /**
     Replaces the element at a given index and returns the previous element.
     - parameters:
         - newElement: The element that will replace the exisiting element.
         - index: The index at which to replace the element.
     - returns: The element previously at the given index.
     */
    public mutating func replace(newElement: Element, at index: Index) -> Element {
        let removed = self[index]
        self[index] = newElement
        return removed
    }
}

public extension Array where Element: Comparable {
    
    /**
     Searches for and returns an element, if found, using binary search. NOTE: Array must be sorted for this method to work properly!
     - parameters:
         - searchItem: The element to be found in the array.
     - returns: The index of the element if it was found, nil otherwise.
     */
    public func binarySearch(for searchItem: Element) -> Int? {
        var lowerIndex = 0;
        var upperIndex = count - 1
        
        while (true) {
            let currentIndex = (lowerIndex + upperIndex)/2
            if(self[currentIndex] == searchItem) {
                return currentIndex
            } else if (lowerIndex > upperIndex) {
                return nil
            } else {
                if (self[currentIndex] > searchItem) {
                    upperIndex = currentIndex - 1
                } else {
                    lowerIndex = currentIndex + 1
                }
            }
        }
    }
}
