//
//  ViewController.swift
//  SmallGame
//
//  Created by xuyz on 12/01/2017.
//  Copyright © 2017 xuyz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func giveGesture(_ sender: AnyObject) {
        
        let gesture = sender.currentTitle!
        print("player1 gives \(gesture)")
        
    }
    
    @IBOutlet weak var scoresDisplay: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.


     
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

