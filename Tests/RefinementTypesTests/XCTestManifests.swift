import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(RefinementTypesTests.allTests),
        testCase(NumericRefinementTests.allTests)
    ]
}
#endif
