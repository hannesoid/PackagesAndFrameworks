import XCTest

import CTests

var tests = [XCTestCaseEntry]()
tests += CTests.allTests()
XCTMain(tests)
