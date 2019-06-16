//
//  IntTests.swift
//  SwiftySweetnessTests
//
//  Created by Christopher Szatmary on 2019-06-15.
//

import Quick
import Nimble
@testable import SwiftySweetness

final class IntTests: QuickSpec {
    override func spec() {
        describe("Int+SwiftSweetness.swift tests") {
            describe("isPalindromic tests") {
                it("returns whether or not the int is a palindrome") {
                    expect(12345.isPalindromic).to(beFalse())
                    expect(12321.isPalindromic).to(beTrue())
                }
            }

            describe("isNegative tests") {
                it("returns whether or not the double is negative") {
                    expect(10.isNegative).to(beFalse())
                    expect((-20).isNegative).to(beTrue())
                }
            }

            describe("numberOfDigits tests") {
                it("returns the number of digits in the int") {
                    expect(12345.numberOfDigits).to(equal(5))
                }
            }

            describe("isPrime tests") {
                it("returns whether or not the int is prime") {
                    expect(31.isPrime).to(beTrue())
                    expect(32.isPrime).to(beFalse())
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
                    var num = 3
                    num **= 3

                    expect(num).to(equal(27))
                }
            }

            describe("reverseNumber() tests") {
                it("reverses the number") {
                    let num = 12345
                    let reversed = num.reverseNumber()

                    expect(reversed).to(equal(54321))
                }
            }

            describe("digit() tests") {
                it("returns the digit at the specified index") {
                    let num = 12345
                    let digit = num.digit(at: 3)

                    expect(digit).to(equal(4))
                }
            }
        }
    }
}
