//
//  BoolTests.swift
//  SwiftySweetnessTests
//
//  Created by Christopher Szatmary on 2019-06-15.
//

import Nimble
import Quick
@testable import SwiftySweetness

final class BoolTests: QuickSpec {
    override func spec() {
        describe("Bool+SwiftSweetness.swift tests") {
            describe("intValue tests") {
                it("returns the int value") {
                    expect(true.intValue).to(equal(1))
                    expect(false.intValue).to(equal(0))
                }
            }
        }
    }
}
