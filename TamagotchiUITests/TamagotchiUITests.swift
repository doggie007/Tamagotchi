//
//  TamagotchiUITests.swift
//  TamagotchiUITests
//
//  Created by Tcheng, James (BJH) on 19/01/2022.
//

import XCTest

class TamagotchiUITests: XCTestCase {

    func testClickFeedMealDecreasesHungerBy3() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let tablesQuery = app.tables
        tablesQuery.cells["Feed Meal"].children(matching: .other).element(boundBy: 3).children(matching: .other).element.tap()
//        tablesQuery.cells["Health: 3, Hunger: 2, Happiness: 5"].children(matching: .other).element(boundBy: 0).children(matching: .other).element.tap()
        XCTAssert(tablesQuery.cells["Health: 3, Hunger: 2, Happiness: 5"].exists)
    }

}
