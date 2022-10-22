//
//  BullEyeTests.swift
//  BullEyeTests
//
//  Created by Trung Pham on 06/10/2022.
//

import XCTest
@testable import BullEye

final class BullEyeTests: XCTestCase {
    
    var game: Game!
    var diff: Int = 20

    override func setUpWithError() throws {
        game = Game()
    }
    
    override func tearDownWithError() throws {
        game = nil
    }

    func testScorePositive(){
        let guess = game.target + diff
        let score = game.points(sliderValue: guess)
        let awardedPoints = 100 - diff
        XCTAssertEqual(score, awardedPoints)
    }
    
    func testScoreNegative(){
        let guess = game.target - diff
        let score = game.points(sliderValue: guess)
        let awardedPoints = 100 - diff

        XCTAssertEqual(score, awardedPoints)
    }

    func testScoreEqual(){
        let guess = game.target
        let score = game.points(sliderValue: guess)
        let awardedPoints = 200

        XCTAssertEqual(score, awardedPoints)
    }

}
