//
//  ArrayTests.swift
//  SwiftySweetnessTests
//
//  Created by Christopher Szatmary on 2019-06-15.
//

import Nimble
import Quick
@testable import SwiftySweetness

final class ArrayTests: QuickSpec {
    override func spec() {
        describe("Array+SwiftSweetness.swift tests") {
            var array: [Int]!

            beforeEach {
                array = [1, 2, 3, 4]
            }

            describe("+= tests") {
                it("appends the value to the array") {
                    array += 20

                    expect(array).to(equal([1, 2, 3, 4, 20]))
                }
            }

            describe("-= tests") {
                it("removes the value at the specified index") {
                    let removed = array -= 2

                    expect(array).to(equal([1, 2, 4]))
                    expect(removed).to(equal(3))
                }
            }

            describe("replace() tests") {
                it("replaces the value at the specified index") {
                    let removed = array.replace(newElement: 20, at: 1)

                    expect(array).to(equal([1, 20, 3, 4]))
                    expect(removed).to(equal(2))
                }
            }

            describe("binarySearch() tests") {
                beforeEach {
                    array = [1, 5, 19, 25, 39, 67, 85]
                }

                it("finds the index of the specified element") {
                    let index = array.binarySearch(for: 19)

                    expect(index).to(equal(2))
                }

                it("returns nil when the element doesn't exist") {
                    let index = array.binarySearch(for: 100)

                    expect(index).to(beNil())
                }
            }
        }
    }
}
