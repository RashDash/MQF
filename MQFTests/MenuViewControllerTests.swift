//
//  MenuViewControllerTests.swift
//  MQFTests
//
//  Created by Christian Brechbuhl on 8/16/20.
//  Copyright © 2020 Airmen Coders, US Air Force - See INTENT.md for license type information. All rights reserved.
//

import XCTest
@testable import MQF

class MenuViewControllerTests: XCTestCase {
    private var MVC:MenuViewController = MenuViewController()
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test30DayLoginLogic(){
        let now = Date()
        //Set date 30.1 days in past
        let nowLess30 = now.addingTimeInterval(-30*24*60*60)
        XCTAssertTrue(MVC.determineIfLastShownIn30(date: nowLess30))

        
        //Set date 31 days in past
        let nowLess31 = Date().addingTimeInterval(-31*24*60*60)
      XCTAssertTrue(MVC.determineIfLastShownIn30(date: nowLess31))
        
        //Set date 29 days in past
                   let nowLess29 = Date().addingTimeInterval(-29*24*60*60)
                  
        XCTAssertFalse(MVC.determineIfLastShownIn30(date: nowLess29))
        
        
    }

}
