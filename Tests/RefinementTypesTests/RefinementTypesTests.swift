import XCTest
@testable import RefinementTypes

final class RefinementTypesTests: XCTestCase {
    func testBooleanRefinementOperators() throws {
        XCTAssertEqual(Refined<And<Fail, Succeed>>("")?.wrapped,
                       nil)
        XCTAssertEqual(Refined<Not<And<Fail, Succeed>>>("")?.wrapped,
                       "")

        XCTAssertEqual(Refined<Or<Fail, Succeed>>("")?.wrapped,
                       "")
        XCTAssertEqual(Refined<Not<Or<Fail, Succeed>>>("")?.wrapped,
                       nil)
    }

    static var allTests = [
        ("testBooleanRefinementOperators", testBooleanRefinementOperators)
    ]
}
