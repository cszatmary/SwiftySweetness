//
//  PropertyRepresentableTests.swift
//  SwiftySweetnessTests
//
//  Created by Christopher Szatmary on 2019-06-16.
//

import Nimble
import Quick
@testable import SwiftySweetness

extension Person: PropertyRepresentable {}

final class PropertyRepresentableTests: QuickSpec {
    override func spec() {
        describe("PropertyRepresentable.swift tests") {
            var person: Person!
            let name = "John"
            let age = 30

            beforeEach {
                person = Person(name: name, age: age)
            }

            describe("propertiesArray() tests") {
                it("returns an array of properties") {
                    let properties = person.propertiesArray()

                    expect(properties[0].label).to(equal("name"))
                    expect(properties[0].value as! String).to(equal(name))
                    expect(properties[1].label).to(equal("age"))
                    expect(properties[1].value as! Int).to(equal(age))
                }
            }

            describe("propertyLabels() tests") {
                it("returns an array of the propery names") {
                    let propertyLabels = person.propertyLabels()
                    let expected = ["name", "age"]

                    expect(propertyLabels).to(equal(expected))
                }
            }

            describe("propertyValues() tests") {
                it("returns an array of the property values") {
                    let propertyValues = person.propertyValues()
                    let nameValue = propertyValues[0] as! String
                    let ageValue = propertyValues[1] as! Int

                    expect(nameValue).to(equal(name))
                    expect(ageValue).to(equal(age))
                }
            }

            describe("propertiesDictionary() tests") {
                it("returns a dictionary containing the properties") {
                    let dictionary = person.propertiesDictionary()

                    expect(dictionary["name"] as! String).to(equal(name))
                    expect(dictionary["age"] as! Int).to(equal(age))
                }
            }
        }
    }
}
