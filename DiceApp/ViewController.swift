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
    
    let diceArray = [
        UIImage(named: "DiceOne"),
        UIImage(named: "DiceTwo"),
        UIImage(named: "DiceThree"),
        UIImage(named: "DiceFour"),
        UIImage(named: "DiceFive"),
        UIImage(named: "DiceSix")
    ]
    override var canBecomeFirstResponder: Bool {
        return true
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            
            DiceMotionStart()
        }
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        if motion == .motionShake {
            
            DiceMotionEnd()
        }
        
    }
    
    
    func DiceMotionStart() {
        
        // Random Image
        diceImageViewOne.image = diceArray[Int.random(in: 0...5)]
        diceImageViewTwo.image = diceArray[Int.random(in: 0...5)]
        
    }
    
    func DiceMotionEnd() {
        // Random rotation
        diceImageViewOne.transform = CGAffineTransform(rotationAngle: CGFloat(Int.random(in: 0...360)))
        diceImageViewTwo.transform = CGAffineTransform(rotationAngle: CGFloat(Int.random(in: 0...360)))
        
    }
    
    
    
    
}



