//
//  EncodableTests.swift
//  SwiftySweetnessTests
//
//  Created by Christopher Szatmary on 2019-06-16.
//

import Foundation
import Quick
import Nimble
@testable import SwiftySweetness

final class EncodableTests: QuickSpec {
    override func spec() {
        describe("Encodable+SwiftSweetness.swift tests") {
            describe("encode() tests") {
                var person: Person!

                beforeEach {
                    person = Person(name: "John", age: 30)
                }

                it("encodes the struct into json") {
                    let json = try! person.encode(to: .json)
                    let jsonString = String(data: json, encoding: .utf8)!
                    let expected = "{\"name\":\"John\",\"age\":30}"

                    expect(jsonString).to(equal(expected))
                }

//                #if os(macOS) || os(iOS) || os(tvOS) || os(watchOS)
//                it("encodes the struct into plist") {
//                    let plist = try! person.encode(to: .plist)
//                }
//                #endif
            }
        }
    }
}
