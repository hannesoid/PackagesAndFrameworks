import XCTest

import BTests

var tests = [XCTestCaseEntry]()
tests += BTests.allTests()
XCTMain(tests)
