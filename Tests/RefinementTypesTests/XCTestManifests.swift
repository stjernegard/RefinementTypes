import XCTest

extension NumericRefinementTests {
    static let __allTests = [
        ("testCombinedConstraints", testCombinedConstraints),
    ]
}

extension RefinementTypesTests {
    static let __allTests = [
        ("testBooleanRefinementOperators", testBooleanRefinementOperators),
    ]
}

#if !os(macOS)
public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(NumericRefinementTests.__allTests),
        testCase(RefinementTypesTests.__allTests),
    ]
}
#endif
