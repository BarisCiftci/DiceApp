//
//  ViewController.swift
//  DiceApp
//
//  Created by Baris Ciftci on 15/05/2022.
//

import UIKit

class ViewController: UIViewController {
    //Ui element reference (image views)
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    //Button Tapped action
    
    @IBAction func rollButtonPressed(_ sender: Any) {
        
        let diceArray = [
            UIImage(named: "DiceOne"),
            UIImage(named: "DiceTwo"),
            UIImage(named: "DiceThree"),
            UIImage(named: "DiceFour"),
            UIImage(named: "DiceFive"),
            UIImage(named: "DiceSix")
        ]
        // Random Image
        diceImageViewOne.image = diceArray[Int.random(in: 0...5)]
        diceImageViewTwo.image = diceArray[Int.random(in: 0...5)]
        
        // Random rotation
        diceImageViewOne.transform = CGAffineTransform(rotationAngle: CGFloat(Int.random(in: 0...360)))
        diceImageViewTwo.transform = CGAffineTransform(rotationAngle: CGFloat(Int.random(in: 0...360)))
        
    }
   
    
}



