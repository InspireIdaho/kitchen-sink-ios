//
//  GamesVC.swift
//  KitchenSink
//
//  Created by M.Sean Bonner on 6/4/18.
//  Copyright © 2018 Bonnerventure, Inc. All rights reserved.
//

import Foundation
import UIKit
import GameKit

class GamesVC: UIViewController {
    
    // class properties
    
    // instance properties
    
    
    // IB outlets
    @IBOutlet var cardImageView: UIImageView!
    @IBOutlet var cardRankLabel: UILabel!
    
    @IBOutlet var dieValueLabel: UILabel!
    @IBOutlet var dieSidesLabel: UILabel!
    
    @IBOutlet var dieSidesSlider: UISlider!
    
    // IB actions
    @IBAction func drawCard(_ sender: Any) {
        let rankDist = GKRandomDistribution(lowestValue: 0, highestValue: 12)
        let suitDist = GKRandomDistribution(lowestValue: 0, highestValue: 3)

        let suit = Suit(rawValue: suitDist.nextInt())
        let card = Card(suit: suit!, rank: rankDist.nextInt())
        
        cardImageView.image = card.suit.image()
        cardRankLabel.text = card.rankText()
    }
    
    @IBAction func dieSidesSliderChanged(_ sender: UISlider) {
        dieSidesLabel.text = dieSidesText()
        dieValueLabel.text = "--"
    }
    
    @IBAction func rollDie(_ sender: Any) {
        
        let sides: Int = Int(dieSidesSlider.value)
        let rand = GKRandomDistribution(forDieWithSideCount: sides)
        let value = rand.nextInt()
        dieValueLabel.text = "\(value)"

    }
    
    func dieSidesText() -> String {
        let sides: Int = Int(dieSidesSlider.value)
        return "D\(sides)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        cardRankLabel.text = "--"
        cardImageView.image = nil
        
        dieValueLabel.text = "--"
        dieSidesLabel.text = dieSidesText()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
