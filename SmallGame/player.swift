//
//  player.swift
//  SmallGame
//
//  Created by xuyz on 12/01/2017.
//  Copyright © 2017 xuyz. All rights reserved.
//

import Foundation


class player {
    var name : String?
    var score : Int?
    var gesture : Gesture? {
        get {
            return self.gesture!
        }
        set (newGesture){
            self.gesture = newGesture
        }
    }
}
