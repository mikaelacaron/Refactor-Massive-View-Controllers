//
//  HackingWithSwiftTests.swift
//  HackingWithSwiftTests
//
//  Created by Paul Hudson on 08/11/2018.
//  Copyright © 2018 Hacking with Swift. All rights reserved.
//

import XCTest
@testable import HackingWithSwift

class HackingWithSwiftTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testNavigationDelegateAllowGoodSite() {
        let sut = NavigationDelegate()
        let url = URL(string: "https://www.hackingwithswift.com")
        XCTAssertTrue(sut.isAllowed(url: url))
    }
    
    func testNavigationDelegateDisallowsBadSite() {
        let sut = NavigationDelegate()
        let url = URL(string: "https://www.google.com")
        XCTAssertFalse(sut.isAllowed(url: url))
    }

}
