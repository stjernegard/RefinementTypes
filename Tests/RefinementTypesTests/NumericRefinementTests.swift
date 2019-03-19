import XCTest
@testable import RefinementTypes

final class NumericRefinementTests: XCTestCase {
    func testEqualsZero() throws {
        XCTAssertEqual(Refined<EqualsZero<Int>>(-1)?.wrapped,
                       nil)
        XCTAssertEqual(Refined<EqualsZero<Int>>(-0)?.wrapped,
                       0)
        XCTAssertEqual(Refined<EqualsZero<Int>>(0)?.wrapped,
                       0)
        XCTAssertEqual(Refined<EqualsZero<Int>>(1)?.wrapped,
                       nil)
    }

    func testCombinedConstraints() throws {
        XCTAssertEqual(Refined<PositiveNumber<Int>>(1)?.wrapped,
                       1)
        XCTAssertEqual(Refined<PositiveNumber<Float>>(1)?.wrapped,
                       1)
        XCTAssertEqual(Refined<PositiveNumber<Double>>(.leastNormalMagnitude)?.wrapped,
                       .leastNormalMagnitude)
        XCTAssertEqual(Refined<NegativeNumber<Double>>(.leastNormalMagnitude)?.wrapped,
                       nil)
        XCTAssertEqual(Refined<NegativeNumber<Double>>(-.leastNormalMagnitude)?.wrapped,
                       -.leastNormalMagnitude)
    }

    static var allTests = [
        ("testEqualsZero", testEqualsZero),
        ("testNumericRefinements", testCombinedConstraints)
    ]
}
