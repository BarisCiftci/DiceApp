//
//  ViewController.swift
//  DiceApp
//
//  Created by Baris Ciftci on 15/05/2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    
    //Ui element reference (image views)
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceImageViewOne.layer.borderColor = UIColor.black.cgColor
        diceImageViewOne.layer.borderWidth = 2
        diceImageViewOne.layer.cornerRadius = 18
        
        diceImageViewTwo.layer.borderColor = UIColor.black.cgColor
        diceImageViewTwo.layer.borderWidth = 2
        diceImageViewTwo.layer.cornerRadius = 18

     }
    
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
            RandomDice()
            DeviceVibrationStart()
            
            
        }
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        if motion == .motionShake {
            RandomDiceRotation()
            RandomDicePosition()
            DeviceVibrationEnd()
        }
    }
    
    func RandomDice() {
        // Random Image
        diceImageViewOne.image = diceArray[Int.random(in: 0...5)]
        diceImageViewTwo.image = diceArray[Int.random(in: 0...5)]
        
        
    }
    func RandomDiceRotation() {
        // Random rotation
        diceImageViewOne.transform = CGAffineTransform(rotationAngle: CGFloat(Int.random(in: 0...360)))
        diceImageViewTwo.transform = CGAffineTransform(rotationAngle: CGFloat(Int.random(in: 0...360)))
        
        
    }
    
    func RandomDicePosition() {
        //Random position
        diceImageViewOne.layer.position = CGPoint(x: Int.random(in: 100...200), y: Int.random(in: 200...600))
        diceImageViewTwo.layer.position = CGPoint(x: Int.random(in: 100...200), y: Int.random(in: 200...600))
    }
    
    func DeviceVibrationStart() {
        
        let vibrate = UINotificationFeedbackGenerator()
        vibrate.notificationOccurred(.success)
    }
    
    func DeviceVibrationEnd() {
        
        let vibrate = UINotificationFeedbackGenerator()
        vibrate.notificationOccurred(.error)
    }
    
    
    
    
    
    
    
}



