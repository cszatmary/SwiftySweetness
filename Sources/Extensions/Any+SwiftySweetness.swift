//
//  Any+SwiftySweetness.swift
//  SwiftySweetness-iOS
//
//  Created by Christopher Szatmary on 2017-11-05.
//  Copyright © 2017 SwiftySweetness. All rights reserved.
//

import Foundation

/// Unwraps an optional value contained within a variable of type Any and returns the value.
/// - parameter any: The optional value of type Any to unwrap.
/// - returns: The unwrapped value or nil if the value is nil.
func unwrap(any: Any) -> Any? {
    
    let mirror = Mirror(reflecting: any)
    guard mirror.displayStyle == .optional else { return any }
    
    if mirror.children.count == 0 { return nil }
    return mirror.children.first!.value
}
