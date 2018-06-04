//
//  Card.swift
//  KitchenSink
//
//  Created by M.Sean Bonner on 6/4/18.
//  Copyright © 2018 Bonnerventure, Inc. All rights reserved.
//

import Foundation
import UIKit

enum Suit: Int {
    case heart = 0, spade, diamond, club
    
    func image() -> UIImage {
        let cardImages = [#imageLiteral(resourceName: "199-card-hearts"), #imageLiteral(resourceName: "198-card-spades"), #imageLiteral(resourceName: "197-card-diamonds"), #imageLiteral(resourceName: "200-card-clubs")]
        return cardImages[self.rawValue]
    }
}

struct Card {
    let suit: Suit
    let rank: Int
    
    func rankText() -> String {
        return "\(rank)"
    }
}
