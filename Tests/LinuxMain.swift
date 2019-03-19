import XCTest

import RefinementTypesTests

var tests = [XCTestCaseEntry]()
tests += RefinementTypesTests.allTests()
tests += NumericRefinementTests.allTests()
XCTMain(tests)
