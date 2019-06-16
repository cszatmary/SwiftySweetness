//
//  StringTests.swift
//  SwiftySweetnessTests
//
//  Created by Christopher Szatmary on 2019-06-15.
//

import Quick
import Nimble
@testable import SwiftySweetness

final class StringTests: QuickSpec {
    override func spec() {
        describe("String+SwiftSweetness.swift tests") {
            describe("trimmed tests") {
                it("returns a new string with the whitespace trimmed") {
                    let string = "   hello world   \n"
                    let trimmed = string.trimmed

                    expect(trimmed).to(equal("hello world"))
                }
            }

            describe("subscript tests") {
                var string: String!

                beforeEach {
                    string = "hello world"
                }

                it("returns the character at the specified index") {
                    let char = string[2]

                    expect(char).to(equal("l"))
                }

                it("returns a new string from the specified range") {
                    let range = string[1..<5]

                    expect(range).to(equal("ello"))
                }

                it("returns a new string from the specified closed range") {
                    let range = string[1...5]

                    expect(range).to(equal("ello "))
                }
            }

            describe("char() tests") {
                it("returns the character at the specified index") {
                    let string = "hello world"
                    let char = string.char(at: 2)

                    expect(char).to(equal("l"))
                }
            }

            describe("padding tests") {
                var string: String!

                beforeEach {
                    string = "hello"
                }

                it("pads the start of the string") {
                    let padded = string.padStart(with: "$ABC", toLength: 10)

                    expect(padded).to(equal("$ABC$hello"))
                }

                it("pads the start of the string with whitespace") {
                    let padded = string.padStart(toLength: 10)

                    expect(padded).to(equal("     hello"))
                }

                it("pads the end of the string") {
                    let padded = string.padEnd(with: "$ABC", toLength: 10)

                    expect(padded).to(equal("hello$ABC$"))
                }

                it("pads the end of the string with whitespace") {
                    let padded = string.padEnd(toLength: 10)

                    expect(padded).to(equal("hello     "))
                }
            }

            describe("splitCamelCase() tests") {
                it("splits the camel cased string") {
                    let string = "camelCaseWord"
                    let split = string.splitCamelCase()

                    expect(split).to(equal("camel Case Word"))
                }
            }

            describe("initials() tests") {
                it("returns the initials of the string") {
                    let string = "Next Step"
                    let initials = string.initials()

                    expect(initials).to(equal("NS"))
                }
            }
        }
    }
}
