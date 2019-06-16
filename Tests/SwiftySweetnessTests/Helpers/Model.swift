//
//  Model.swift
//  SwiftySweetnessTests
//
//  Created by Christopher Szatmary on 2019-06-16.
//

import Foundation
import SwiftySweetness

struct Person: Codable, Equatable {
    var name: String
    var age: Int
}

func loadFile(type: DataRepresentation) -> Data {
    let rootDir = FileManager.default.currentDirectoryPath
    let helpersDir = "Tests/SwiftySweetnessTests/Helpers"
    let path = "\(rootDir)/\(helpersDir)/data.\(String(describing: type))"

    return FileManager.default.contents(atPath: path)!
}
