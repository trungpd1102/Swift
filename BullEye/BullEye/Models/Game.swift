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
    let rightScore = 200

    func points(sliderValue: Int) -> Int {
        let differience = abs(target - sliderValue)
        
        if differience == 0 {
            return rightScore
        }
        else {
            let awardedPoints = 100 - differience
            return awardedPoints
        }
    }
    
    mutating func startNewRound(point: Int){
        target = Int.random(in: 1 ... 100)
        score += point
        round += 1
    }
}
