//
//  IfTests.swift
//  SwiftySweetness
//
//  Created by Christopher Szatmary on 2019-06-22.
//

import Quick
import Nimble
@testable import SwiftySweetness

final class IfTests: QuickSpec {
    override func spec() {
        describe("If.swift tests") {
            it("returns the value specified in if") {
                let num = 15
                let message = If(num % 15 == 0) { "fizzbuzz" }
                    .elseIf(num % 3 == 0) { "fizz" }
                    .elseIf(num % 5 == 0) { "buzz" }
                    .else { "\(num)" }

                expect(message).to(equal("fizzbuzz"))
            }

            it("returns the value specified in the first elseIf") {
                let num = 6
                let message = If(num % 15 == 0) { "fizzbuzz" }
                    .elseIf(num % 3 == 0) { "fizz" }
                    .elseIf(num % 5 == 0) { "buzz" }
                    .else { "\(num)" }

                expect(message).to(equal("fizz"))
            }

            it("returns the value specified in the else") {
                let num = 1
                let message = If(num % 15 == 0) { "fizzbuzz" }
                    .elseIf(num % 3 == 0) { "fizz" }
                    .elseIf(num % 5 == 0) { "buzz" }
                    .else { "\(num)" }

                expect(message).to(equal("1"))
            }
        }
    }
}
