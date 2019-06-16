//
//  OptionalTests.swift
//  SwiftySweetnessTests
//
//  Created by Christopher Szatmary on 2019-06-15.
//

import Quick
import Nimble
@testable import SwiftySweetness

final class OptionalTests: QuickSpec {
    override func spec() {
        describe("Optional+SwiftSweetness.swift tests") {
            describe("hasValue tests") {
                it("returns true when there is a value") {
                    let optional: Int? = 10

                    expect(optional.hasValue).to(beTrue())
                }

                it("returns false when it is nil") {
                    let optional: Int? = nil

                    expect(optional.hasValue).to(beFalse())
                }
            }
        }
    }
}
