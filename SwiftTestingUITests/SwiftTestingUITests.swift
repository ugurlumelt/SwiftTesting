//
//  SwiftTestingUITests.swift
//  SwiftTestingUITests
//
//  Created by Meltem Uğurlu on 15.05.2024.
//

import XCTest

final class SwiftTestingUITests: XCTestCase {
    
    func testToDoItem() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let addButton = app.navigationBars["SwiftTesting.View"].buttons["Add"]
        
        let elementsQuery = app.alerts["Add Item"].scrollViews.otherElements
        let textField = elementsQuery.collectionViews.textFields["Enter Item"]
        
        let okButton = elementsQuery.buttons["OK"]

        let addedCell = app.tables.cells.containing(.staticText, identifier: "my to do").element
        
        addButton.tap()
        textField.tap()
        textField.typeText("my to do")
        okButton.tap()
        
        XCTAssertTrue(addedCell.exists)
        
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    
    func testDeleteItem() throws {
        let app = XCUIApplication()
        app.launch()
        
        let addButton = app.navigationBars["SwiftTesting.View"].buttons["Add"]
        
        let elementsQuery = app.alerts["Add Item"].scrollViews.otherElements
        let textField = elementsQuery.collectionViews.textFields["Enter Item"]
        
        let okButton = elementsQuery.buttons["OK"]

        let addedCell = app.tables.cells.containing(.staticText, identifier: "my to do").element
        
        //tables
        let tablesQuery = app.tables
        let deleteButton = tablesQuery.buttons["Delete"]
        
        addButton.tap()
        textField.tap()
        textField.typeText("my to do")
        okButton.tap()
        
        addedCell.swipeLeft()
        deleteButton.tap()
        
        XCTAssertFalse(addedCell.exists) // not line , added is ok
        
    }
    

  
}
