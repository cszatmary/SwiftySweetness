# Protocols

### **Table of Contents**
- [Decodable](#decodable)
    + [decode](#decode)
- [Encodable](#encodable)
    + [encode](#encode)
- [PropertyRepresentable](#propertyrepresentable)
    + [propertiesArray](#propertiesarray)
    + [propertyLabels](#propertylabels)
    + [propertyValues](#propertyvalues)
    + [propertiesDictionary](#propertiesdictionary)

## Decodable
`SwiftySweetness` provides extra sugar for working with the `Decodable` protocol.

### decode
The `decode` method takes a `Data` instance and a `DataRepresentation` type and returns a new instance of the conforming type.

```swift
let data = Data(...)
let decodedStruct = MyStruct.decode(from: data, ofType: .json)
```

## Encodable
`SwiftySweetness` provides extra sugar for working with the `Encodable` protocol.

### encode
The `encode` method encodes the instance into the specified format and returns a `Data` object.

```swift
let data = myStruct.encode(to: .json)
```

## PropertyRepresentable
The `PropertyRepresentable` protocol allows any conforming type to generate an array containing all its properties.

```swift
struct Person: PropertyRepresentable {
    var name: String
    var age: Int
}

let person = Person(name: "John Doe", age: "20")
person.properties() // [(label: "name", value: "John Doe"), (label: "age", value: 20)]
person.propertyLabels() // ["name", "age"]
person.propertyValues() // ["John Doe", 20]
person.propertiesDictionary() // ["name": "John Doe", "age": 20]
```

### propertiesArray
Returns an array of tuples containing the instance's properties with their name and value.

```swift
struct Person: PropertyRepresentable {
    var name: String
    var age: Int
}

let person = Person(name: "John Doe", age: "20")

person.properties() // [(label: "name", value: "John Doe"), (label: "age", value: 20)]
```

### propertyLabels
Returns an array of all the instance's property labels.

```swift
struct Person: PropertyRepresentable {
    var name: String
    var age: Int
}

let person = Person(name: "John Doe", age: "20")

person.propertyLabels() // ["name", "age"]
```

### propertyValues
Returns an array of all the instance's property values.

```swift
struct Person: PropertyRepresentable {
    var name: String
    var age: Int
}

let person = Person(name: "John Doe", age: "20")

person.propertyValues() // ["John Doe", 20]
```

### propertiesDictionary
Returns a dictionary where the keys are the labels of the instance's properties and the values are the property values.

```swift
struct Person: PropertyRepresentable {
    var name: String
    var age: Int
}

let person = Person(name: "John Doe", age: "20")

person.propertiesDictionary() // ["name": "John Doe", "age": 20]
```
