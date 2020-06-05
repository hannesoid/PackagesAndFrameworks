import XCTest
@testable import C

final class CTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(C().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
