//
//  Concentration.swift
//  ConcetenationGame
//
//  Created by IOS Developer on 08/08/2018.
//  Copyright © 2018 Slash Global. All rights reserved.
//

import Foundation

class concentration
{
    var cards = [Card]()
    
    var oneAndOnlyCardFaceUP : Int?
    
    // action when a card is choosed
    func chooseCard(at index : Int ){
        if !cards[index].isMatched{
            if let MatchIndex = oneAndOnlyCardFaceUP where MatchIndex != index {
                if cards[MatchIndex].cardNubmer == cards[index].cardNubmer{
                cards[index].isMatched = true
                cards[MatchIndex].isMatched = true
                }
             cards[index].isFaceUp = true
             oneAndOnlyCardFaceUP = nil
            }
        else{
        for flipDownIndex in cards.indices{
        cards[flipDownIndex].isFaceUp = false
                }
        cards[index].isFaceUp = true
        oneAndOnlyCardFaceUP = index
            }
      }
 }
  
    // first initialization of cards on storyboard
    init(numberOfPairCards : Int)
    {
        var numberforCard = [10,20,30,40,50,60,70]
        var numberforMatchCard = [9,18,27,36,45,54,63]
        for _ in 0..<numberOfPairCards{
        var card = Card()
        var matchCard = card
        card.cardNubmer = numberforCard.removeFirst()%7
        matchCard.cardNubmer = numberforMatchCard.removeFirst()%7
        print("Card Number ",card.cardNubmer , card.isFaceUp  , card.isMatched, " Match Card Nummber ", matchCard.cardNubmer)
        cards += [card, matchCard]
        }
        // TODO shuffle of cards
    }
}