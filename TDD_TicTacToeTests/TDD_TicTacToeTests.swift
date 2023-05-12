//
//  TDD_TicTacToeTests.swift
//  TDD_TicTacToeTests
//
//  Created by Student Account on 5/12/23.
//

import XCTest
@testable import TDD_TicTacToe

class TDD_TicTacToeTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInitValue_blankAndcellCount() {
        let ticModel = TicModel()
        
        XCTAssertEqual(ticModel.grid.count, 9)
        XCTAssertEqual((ticModel.grid.filter { $0 == Cell.b }.count), 9)
    }
    
    func testviewModel_initValueAndBlankCells() {
        let ticViewModel = TicViewModel()
        
        XCTAssertEqual(ticViewModel.grid.count, 9)
        XCTAssertEqual((ticViewModel.grid.filter { $0 == Cell.b }.count), 9)
    }
    
    func test_setCell3toX() {
        var ticModel = TicModel()
        ticModel.setCell(n: 3, c: .x)
        ticModel.setCell(n: 42, c: .x)
        
        XCTAssertTrue(ticModel.grid[3] == Cell.x)
        XCTAssertTrue(ticModel.grid.contains { $0 == Cell.b } )
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
