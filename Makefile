.DEFAULT_GOAL = xcode

mint:
	mint bootstrap
.PHONY: mint

xcode:
	swift package generate-xcodeproj
.PHONY: xcode

lint:
	mint run swiftlint
.PHONY: lint

format:
	mint run $(shell grep -i swiftformat Mintfile) swiftformat .
.PHONY: format

hooks:
	swift run komondor install
.PHONY: hooks
