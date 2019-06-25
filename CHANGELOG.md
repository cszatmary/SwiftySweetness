# Change Log
All notable changes to this project will be documented in this file. This project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [3.0.0] - 2019-06-24
The project has been completely restructured and is now a pure SPM package (no more `xcodeproj` in git, yay!) with proper Linux support. Also added tests, CI, and better documentation.

### Breaking Changes
- `CGRect` extensions have been removed. It is not part of the Swift standard library or Foundation so it is outside the scope of this project
- Swift 5 target by default
- `Int#reverseNumber()` has been renamed to `Int#reversed()`
- `Double#roundTo(place:)` has been renamed to `Double#rounded(to:)`
- `String#splitCamelCase()` has been renamed to `String#splittingCamelCase()`
- `String#pad` has been removed and replaced with `String#paddingStart` and `String#paddingEnd`

### Added
- `If` and `Switch` classes for creating condition expressions
- Unit tests
- Improved docs
- Changelog

[3.0.0]: https://github.com/cszatma/SwiftySweetness/compare/2.0.0...3.0.0
