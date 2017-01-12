//
//  player.swift
//  SmallGame
//
//  Created by xuyz on 12/01/2017.
//  Copyright © 2017 xuyz. All rights reserved.
//

import Foundation


class Player {
    
    var name : String?
    var gesture : Gesture?
    
    private func randomGesture() {
        let randomNumber = arc4random_uniform(3)
        switch randomNumber{
        case 0:
            gesture = Gesture.rock
        case 1:
            gesture = Gesture.paper
        case 2:
            gesture = Gesture.scissors
        default:
            break
        }
    }
    
}
