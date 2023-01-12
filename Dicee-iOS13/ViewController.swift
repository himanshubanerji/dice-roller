//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // IBOutlet used to reference a UI element
    // here both the dice images are referenced
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    // storing all UI images in an UIImage array
    let diceLogo: [UIImage] = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    var leftDiceNumber = 0
    var rightDiceNumber = 0
    
    
    // IBAction = Interface Builder Action
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        leftDiceNumber = Int.random(in: 0...5)
        rightDiceNumber = Int.random(in: 0...5)
        
        
        //        diceImageViewOne.image = diceLogo[leftDiceNumber]
        diceImageViewOne.image = diceLogo.randomElement()
        diceImageViewTwo.image = diceLogo[rightDiceNumber]
        
        
        
//        if(leftDiceNumber == 5) {
//            leftDiceNumber = -1;
//            rightDiceNumber = 6;
//        }
        
    }
    
}

