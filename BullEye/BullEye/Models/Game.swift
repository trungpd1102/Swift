//
//  Game.swift
//  BullEye
//
//  Created by Trung Pham on 19/10/2022.
//

import Foundation

struct Game {
    var target: Int = Int.random(in: 1 ... 100)
    var score: Int = 0
    var round: Int = 1
    
    func points(sliderValue: Int) -> Int {
        let difference = abs(target - sliderValue)
        let awardedPoints = 100 - difference
        var bonusPoints : Int
        
        switch difference {
        case 0:
            bonusPoints = 100
        case 1:
            bonusPoints = 50
        case 2:
            bonusPoints = 30
        default:
            bonusPoints = 0
        }
        
        return awardedPoints + bonusPoints
    }
    
    mutating func startNewRound(point: Int){
        target = Int.random(in: 1 ... 100)
        score += point
        round += 1
    }
    
    
    mutating func restart(){
        score = 0
        round = 1
        target = Int.random(in: 1 ... 100)
    }
}
