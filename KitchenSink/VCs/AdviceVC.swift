//
//  AdviceVC.swift
//  KitchenSink
//
//  Created by M.Sean Bonner on 6/4/18.
//  Copyright © 2018 Bonnerventure, Inc. All rights reserved.
//

import Foundation
import UIKit
import GameKit

class AdviceVC: UIViewController {
    
    // class properties
    
    let responses = [
        "Upgrade now for better answer",
        "It is certain",
        "It is decidedly so",
        "Without a doubt",
        "Yes definitely",
        "You may rely on it",
        "As I see it, yes",
        "Most likely",
        "Outlook good",
        "Yes",
        "Signs point to yes",
        "Reply hazy try again",
        "Ask again later",
        "Better not tell you now",
        "Cannot predict now",
        "Concentrate and ask again",
        "Don't count on it",
        "My reply is no",
        "My sources say no",
        "Outlook not so good",
        "Very doubtful",
    ]
    
    // instance properties
    
    // IB outlets
    @IBOutlet var responseLabel: UILabel!
    
    
    // IB actions
    @IBAction func askForResponse(_ sender: Any) {
        
        let rand = GKRandomDistribution(lowestValue: 0, highestValue: responses.count - 1)
        let index = rand.nextInt()
        responseLabel.text = responses[index]
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        responseLabel.text = "Pose your question..."
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
