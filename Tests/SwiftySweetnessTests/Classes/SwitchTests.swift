//
//  SwitchTests.swift
//  SwiftySweetness
//
//  Created by Christopher Szatmary on 2019-06-22.
//

import Nimble
import Quick
@testable import SwiftySweetness

final class SwitchTests: QuickSpec {
    override func spec() {
        describe("Switch.swift tests") {
            it("returns the value specified in the first case") {
                let action = "start"
                let message = Switch(action)
                    .case("start") { "Starting..." }
                    .case("stop") { "Stopping..." }
                    .case("pause") { "Pausing..." }
                    .default { "Unknown Action" }

                expect(message).to(equal("Starting..."))
            }

            it("returns the value specified in the second case") {
                let action = "stop"
                let message = Switch(action)
                    .case("start") { "Starting..." }
                    .case("stop") { "Stopping..." }
                    .case("pause") { "Pausing..." }
                    .default { "Unknown Action" }

                expect(message).to(equal("Stopping..."))
            }

            it("returns the value specified in the default case") {
                let action = "naw"
                let message = Switch(action)
                    .case("start") { "Starting..." }
                    .case("stop") { "Stopping..." }
                    .case("pause") { "Pausing..." }
                    .default { "Unknown Action" }

                expect(message).to(equal("Unknown Action"))
            }
        }
    }
}
