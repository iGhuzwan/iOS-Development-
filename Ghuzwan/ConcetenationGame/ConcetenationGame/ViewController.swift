//
//  ViewController.swift
//  ConcetenationGame
//
//  Created by IOS Developer on 06/08/2018.
//  Copyright © 2018 Slash Global. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Game instance
    var Game : concentration!
    
    //var ReloadGame : concentration!
    
    // countTotalButton
    var buttonstotal = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.function()
    }

    // to Initialize the Game
    func function(){
        buttonstotal = totalButtons.count
        Game = concentration(numberOfPairCards: (buttonstotal + 1)/2)
        print("total button when array already empty",buttonstotal)
    }
    
    // play agian GAME
    @IBAction func StartAgainButton(sender:UIButton) {
        totalcounts = 0
        viewDidLoad()
       for index in 0..<Game.cards.count
       {
       Game.cards[index].isMatched = false
       Game.cards[index].isFaceUp = false
        }
       for indexOfCard in totalButtons.indices
       {
       let button = totalButtons[indexOfCard]
        button.setTitle("", forState: UIControlState.Normal)
        button.backgroundColor = UIColor.orangeColor()
       }
    }
   
    // to store count of touch cards
    var totalcounts : Int = 0{
       didSet
       {
       countsLabel.text = "  Flips : \(totalcounts)"
       }
    }
    
    // total number of buttons in Game
    @IBOutlet var totalButtons: [UIButton]!
    
    
    // show touch buttons count
    @IBOutlet weak var countsLabel: UILabel!

    // action of buttons if touch
    @IBAction func touchAction(sender: UIButton) {
     totalcounts += 1
     if let cardNumber = totalButtons.indexOf(sender){
        Game.chooseCard(at: cardNumber)
        updateViewFromModel()
     }
     else {
        print("Not a Valid Touch")
        }
    }
    
    // update View on Touch Card Action Call
    func updateViewFromModel(){
        for index in totalButtons.indices{
        let button = totalButtons[index]
        let card = Game.cards[index]
            if card.isFaceUp {
                button.setTitle(Emoji(fore: card), forState: UIControlState.Normal)
                button.backgroundColor = UIColor.whiteColor()
            }
            else {
                button.setTitle("", forState: UIControlState.Normal)
                button.backgroundColor = card.isMatched ? UIColor.clearColor() : UIColor.orangeColor()
            }
        }
    }
    
    // emojiChoice
    var emojiChoice = ["😎","😡","🚑","⚽️","🎨","🍳","🍭","🌏","🐤","🐴","🐽","🐱"]
    
    // emojiDictonary to store
    var emoji = [Int:String]()
    
    // to paste emoji on cards or buttons
    func Emoji(fore card : Card) -> String
    {
    if emoji[card.cardNubmer] == nil && emojiChoice.count > 0{
        let randomIndex = Int(arc4random_uniform(UInt32(emojiChoice.count)))
        emoji[card.cardNubmer] = emojiChoice.removeAtIndex(randomIndex)
        }
    return emoji[card.cardNubmer] ?? "?"
    }
}

