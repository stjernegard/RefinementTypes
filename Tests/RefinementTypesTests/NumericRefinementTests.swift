import XCTest
import RefinementTypes

final class NumericRefinementTests: XCTestCase {
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
}
