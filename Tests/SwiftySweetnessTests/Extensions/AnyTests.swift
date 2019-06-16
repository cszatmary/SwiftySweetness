//
//  AnyTests.swift
//  SwiftySweetness
//
//  Created by Christopher Szatmary on 2019-06-15.
//

import Quick
import Nimble
@testable import SwiftySweetness

final class AnyTests: QuickSpec {
    override func spec() {
        describe("Any+SwiftSweetness.swift tests") {
            it("unwraps an any value") {
                let value: Int? = 10
                let wrapped = value as Any

                let unwrapped = unwrap(any: wrapped) as! Int
                expect(unwrapped).to(equal(10))
            }

            it("returns nil since the value was nil") {
                let value: Int? = nil
                let wrapped = value as Any

                let unwrapped = unwrap(any: wrapped)
                expect(unwrapped).to(beNil())
            }
        }
    }
}

