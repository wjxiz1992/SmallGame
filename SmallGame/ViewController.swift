//
//  ViewController.swift
//  SmallGame
//
//  Created by xuyz on 12/01/2017.
//  Copyright © 2017 xuyz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoresDisplay: UILabel!
    
    @IBOutlet weak var timesInsert: UITextField!
    
    @IBOutlet weak var enemyGestureDisplay: UILabel!
    
    private var game : GameModel?
    
    @IBAction func gameStart(_ sender: AnyObject) {
        let times = Int(timesInsert.text!)
        if  times == nil {
            game = GameModel(times: 3)
        } else {
            game = GameModel(times: times!)
        }
        print("game starts!")
        scoresDisplay.text = String(0)
    }
    
    @IBAction func giveGesture(_ sender: AnyObject) {
        if(game?.times != 0) {
            
            let gesture = sender.currentTitle!
            print("player1 gives \(gesture)")
            
            switch gesture! {
            case "✊":
                game?.player1.gesture = Gesture.rock
            case "✌️":
                game?.player1.gesture = Gesture.scissors
            case "🖐":
                game?.player1.gesture = Gesture.paper
            default:
                break
            }
            
            game?.player2.randomGesture()
            print("player2 gives \(game?.player2.gesture)")
            
            if game?.player2.gesture! == Gesture.rock {
                enemyGestureDisplay.text = "✊"
            }
            if game?.player2.gesture! == Gesture.paper {
                enemyGestureDisplay.text = "🖐"
            }
            if game?.player2.gesture! == Gesture.scissors {
                enemyGestureDisplay.text = "✌️"
            }
            
            
            game?.getResult()
            scoresDisplay.text = String(describing: game!.player1_score)
            print(game!.player1_score)
            
            if game?.times == 0 {
                timesInsert.text = "game is over"
            }
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

