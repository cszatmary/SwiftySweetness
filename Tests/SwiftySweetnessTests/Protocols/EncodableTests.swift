//
//  EncodableTests.swift
//  SwiftySweetnessTests
//
//  Created by Christopher Szatmary on 2019-06-16.
//

import Foundation
import Nimble
import Quick
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
                    let data = Data("{\"name\":\"John\",\"age\":30}".utf8)
                    let original = try! JSONDecoder().decode(Person.self, from: json)
                    let expected = try! JSONDecoder().decode(Person.self, from: data)

                    expect(original).to(equal(expected))
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
