//
//  ViewController.swift
//  SmallGame
//
//  Created by xuyz on 12/01/2017.
//  Copyright © 2017 xuyz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var game : GameModel?
    
    @IBAction func gameStart(_ sender: AnyObject) {
        
        let times = Int(timesInsert.text!)
        game = GameModel(times: times!)
        print("game starts!")
        scoresDisplay.text = String(0)
    }
    
    @IBAction func giveGesture(_ sender: AnyObject) {
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
        game?.getResult()
        scoresDisplay.text = String(describing: game?.player1_score)
        
        print(game?.player1_score)
        
        
    }
    
    @IBOutlet weak var scoresDisplay: UILabel!
    
    @IBOutlet weak var timesInsert: UITextField!
    
    @IBOutlet weak var enemyGestureDisplay: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

