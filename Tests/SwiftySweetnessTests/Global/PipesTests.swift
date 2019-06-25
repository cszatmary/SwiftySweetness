//
//  PipesTests.swift
//  SwiftySweetnessTests
//
//  Created by Christopher Szatmary on 2019-06-24.
//

import Nimble
import Quick
@testable import SwiftySweetness

final class PipeTests: QuickSpec {
    override func spec() {
        describe("Pipes.swift tests") {
            describe("standard pipe tests") {
                it("pipes the value to the function") {
                    let num = 4
                    let result = num |> (addInt, -10)

                    expect(result).to(equal(-6))
                }
            }

            describe("optional pipe tests") {
                it("pipes the value to the function since it is not nil") {
                    let optional: Int? = 4
                    let result = optional |>? (addInt, 6)

                    expect(result).to(equal(10))
                }

                it("returns nil since the value is nil") {
                    let optional: Int? = nil
                    let result = optional |>? (addInt, 6)

                    expect(result).to(beNil())
                }
            }

            describe("force pipe tests") {
                it("pipes the value to the function since it is not nil") {
                    let optional: Int? = 4
                    let result = optional |>! (addInt, 6)

                    expect(result).to(equal(10))
                }

                // Not supported with Swift CLI
//                it("calls fatalError() since the value is nil") {
//                    let optional: Int? = nil
//
//                    expect { _ = optional |>! (addInt, 6) }.to(throwAssertion())
//                }
            }
        }
    }
}

func addInt(_ x: Int, _ y: Int) -> Int {
    return x + y
}
