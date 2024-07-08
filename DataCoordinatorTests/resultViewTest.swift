//
//  resultViewTest.swift
//  DataCoordinatorTests
//
//  Created by Emmanuel Zambrano on 8/07/24.
//

import XCTest
@testable import DataCoordinator

final class resultViewTest: XCTestCase {
    
    let view = resultView()
    
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testLabels() {
        MainDataCoodinator.share.name = "test Name"
        MainDataCoodinator.share.lastName = "test last Name"
        MainDataCoodinator.share.age = "test 20"
        
        self.view.setLabels()
        let name = self.view.nameLabel.text
        let lastName = self.view.lastNameLabel.text
        let age = self.view.ageLabel.text
        
        XCTAssertEqual(name, "test Name")
        XCTAssertEqual(lastName, "test last Name")
        XCTAssertEqual(age, "test 20")
        
    }
    
}
