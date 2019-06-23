import Quick

@testable import SwiftySweetnessTests

QCKMain([
    // Extensions
    AnyTests.self,
    ArrayTests.self,
    BoolTests.self,
    DoubleTests.self,
    IntTests.self,
    OptionalTests.self,
    StringTests.self,
    // Protocols
    DecodableTests.self,
    EncodableTests.self,
    PropertyRepresentableTests.self,
])
