//
//  RollViewController.swift
//  Dice
//
//  Created by Jason Schatz on 11/6/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

class RollViewController: UIViewController {
    /**
    * Randomly generates an Int from 1 to 6
    */
    func randomDiceValue() -> Int {
        // Generate a random Int32 using arc4Random
        let randomValue = 1 + arc4random() % 6
        
        // Return a more convenient Int, initialized with the random value
        return Int(randomValue)
    }
  
  // TODO: Add safety checks to make sure that segue.destinationViewController 
  // is of type DiceViewController
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    let diceController : DiceViewController = segue.destinationViewController as! DiceViewController
    diceController.firstValue = self.randomDiceValue()
    diceController.secondValue = self.randomDiceValue()
  }
    
    
}

