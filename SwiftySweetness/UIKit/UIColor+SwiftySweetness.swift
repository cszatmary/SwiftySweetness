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

import UIKit

public extension UIColor {
    
    /**
     Initializes and returns a color object using the specified opacity and RGB component values.
     - parameters:
         - r: The red value of the color object on a scale from 0 to 255.
         - g: The green value of the color object on a scale from 0 to 255.
         - b: The blue value of the color object on a scale from 0 to 255.
         - a: The opacity value of the color object on a scale from 0 to 100.
     */
    public convenience init(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat = 100) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: a/100)
    }
    
    /**
     Initializes and returns a color object using the specified opacity and RGB component values.
     - parameters:
     - hex: A 6-digit hexadecimal number value.
     - alpha: The opacity value of the color object on a scale from 0 to 100.
     */
    public convenience init(hex: Int, alpha: CGFloat = 100) {
        self.init(r: CGFloat((hex >> 16) & 0xFF), g: CGFloat((hex >> 8) & 0xFF), b: CGFloat(hex & 0xFF), a: alpha/100)
    }
    
    /**
     Initializes and returns a color object using the specified opacity and RGB component values.
     - parameters:
     - hex: A string representing a 6-digit hexadecimal number value.
     - alpha: The opacity value of the color object on a scale from 0 to 100.
     */
    public convenience init?(hex hexString: String, alpha: CGFloat = 100) {
        guard let hex = Int(hexString, radix: 16) else { return nil }
        self.init(r: CGFloat((hex >> 16) & 0xFF), g: CGFloat((hex >> 8) & 0xFF), b: CGFloat(hex & 0xFF), a: alpha/100)
    }
}
