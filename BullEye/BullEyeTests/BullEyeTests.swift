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
    
    func testScoreMinusClose1(){
        let closePoint = 2
        let guess = game.target - closePoint
        let score = game.points(sliderValue: guess)
        let bonusPoints = 30
        let awardedPoints = (100 - closePoint + bonusPoints)

        XCTAssertEqual(score, awardedPoints)
    }
    
    func testScoreMinusClose2(){
        let closePoint = 1
        let guess = game.target - closePoint
        let score = game.points(sliderValue: guess)
        let bonusPoints = 50
        let awardedPoints = (100 - closePoint + bonusPoints)

        XCTAssertEqual(score, awardedPoints)
    }
    
    func testScorePlusClose1(){
        let closePoint = 2
        let guess = game.target + closePoint
        let score = game.points(sliderValue: guess)
        let bonusPoints = 30
        let awardedPoints = (100 - closePoint + bonusPoints)

        XCTAssertEqual(score, awardedPoints)
    }
    
    func testScorePlusClose2(){
        let closePoint = 1
        let guess = game.target + closePoint
        let score = game.points(sliderValue: guess)
        let bonusPoints = 50
        let awardedPoints = (100 - closePoint + bonusPoints)

        XCTAssertEqual(score, awardedPoints)
    }

    func testNewRound(){
        game.startNewRound(point: 100)
        
        XCTAssertEqual(game.score, 100)
        XCTAssertEqual(game.round, 2)
    }
    
    func testRestart(){
        game.startNewRound(point: 100)
        XCTAssertNotEqual(game.score, 0)
        XCTAssertNotEqual(game.round, 1)
        
        game.restart()
        XCTAssertEqual(game.score, 0)
        XCTAssertEqual(game.round, 1)

    }


}
