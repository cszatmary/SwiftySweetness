//
//  DoubleTests.swift
//  SwiftySweetnessTests
//
//  Created by Christopher Szatmary on 2019-06-15.
//

import Nimble
import Quick
@testable import SwiftySweetness

final class DoubleTests: QuickSpec {
    override func spec() {
        describe("Double+SwiftSweetness.swift tests") {
            describe("isNegative tests") {
                it("returns whether or not the double is negative") {
                    expect(10.0.isNegative).to(beFalse())
                    expect((-20.0).isNegative).to(beTrue())
                }
            }

            describe("** tests") {
                it("calculates the power") {
                    let power = 2 ** 5

                    expect(power).to(equal(32))
                }
            }

            describe("**= tests") {
                it("calculates the power and it assigns it to the base") {
                    var num = 3.0
                    num **= 3.0

                    expect(num).to(equal(27.0))
                }
            }

            describe("roundTo() tests") {
                it("rounds the double to 2 decimal places") {
                    let double = 12.3489345
                    let rounded = double.roundTo(places: 2)

                    expect(rounded).to(equal(12.35))
                }
            }
        }
    }
}
