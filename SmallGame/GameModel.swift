//
//  GameModel.swift
//  SmallGame
//
//  Created by xuyz on 12/01/2017.
//  Copyright © 2017 xuyz. All rights reserved.
//

import Foundation

class GameModel {
    
    var times : Int?
    var player1 : Player?
    var player2 : Player?
    var player1_score : Int?
    var player2_score : Int?
    
    
    
    func getResult(player1_gesture: Gesture, player2_gesture: Gesture) -> Void {
        switch player1_gesture {
            
        case .rock:
            
            switch player2_gesture {
            case .rock:
                break
            case .paper:
                player2_score! += 1
            case .scissors:
                player1_score! += 1
            }
        case .paper:
            switch  player2_gesture{
            case .rock:
                player1_score! += 1
            case .paper:
                break
            case .scissors:
                player2_score! += 1
            }
            
        case .scissors:
            switch player2_gesture {
            case .rock:
                player2_score! += 1
            case .paper:
                player1_score! += 1
            case .scissors:
                break
            }
            
        }
            
    }
    
    init(times: Int) {
        
    }
}
    
    
    
