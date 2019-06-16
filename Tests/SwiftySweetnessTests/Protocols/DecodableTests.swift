//
//  DecodableTests.swift
//  SwiftySweetnessTests
//
//  Created by Christopher Szatmary on 2019-06-16.
//

import Foundation
import Quick
import Nimble
@testable import SwiftySweetness

final class DecodableTests: QuickSpec {
    override func spec() {
        describe("Decodable+SwiftSweetness.swift tests") {
            describe("decode() tests") {
                it("decodes the json into a struct") {
                    let data = loadFile(type: .json)
                    let person = try! Person.decode(from: data, ofType: .json)

                    expect(person).to(equal(Person(name: "John", age: 30)))
                }

                #if os(macOS) || os(iOS) || os(tvOS) || os(watchOS)
                it("decodes the plist into a struct") {
                    let data = loadFile(type: .plist)
                    let person = try! Person.decode(from: data, ofType: .plist)

                    expect(person).to(equal(Person(name: "John", age: 30)))
                }
                #endif
            }
        }
    }
}
