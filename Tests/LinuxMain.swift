import XCTest

import SubTests

var tests = [XCTestCaseEntry]()
tests += SubTests.allTests()
XCTMain(tests)
