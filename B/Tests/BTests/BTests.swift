import XCTest
@testable import B

final class BTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(B().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
