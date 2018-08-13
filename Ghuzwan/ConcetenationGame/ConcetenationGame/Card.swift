//
//  Card.swift
//  ConcetenationGame
//
//  Created by IOS Developer on 08/08/2018.
//  Copyright © 2018 Slash Global. All rights reserved.
//

import Foundation

struct Card
{

    var isFaceUp = false
    var isMatched = false
    var cardNubmer : Int

    static var numberFactory = 0
    
    static func getUniqueNumber() -> Int
    {
    numberFactory += 1
    return numberFactory
    }
    
    
    init(){
    self.cardNubmer = Card.getUniqueNumber()
    }

}