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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //diceImageViewOne.image = UIImage(named: "DiceOne")
        //diceImageViewTwo.image = UIImage(named: "DiceSix")
        
        //Background gradient color
        
        let lightGreen = UIColor(red: 41.0 / 255.0 ,
                                 green: 101.0 / 255.0,
                                 blue: 34.0 / 255.0,
                                 alpha: 1.0).cgColor
        
        let darkGreen = UIColor(red: 11.0 / 255.0 ,
                                green: 27.0 / 255.0,
                                blue: 9.0 / 255.0,
                                alpha: 1.0).cgColor
        
        let backgroundGradientColor = CAGradientLayer()
        
        backgroundGradientColor.colors = [lightGreen, darkGreen]
        
        backgroundGradientColor.frame = view.frame
        backgroundGradientColor.startPoint = CGPoint(x: 0.0, y: 0.0)
        backgroundGradientColor.endPoint = CGPoint(x: 1.0, y: 1.0)
        
        self.view.layer.insertSublayer(backgroundGradientColor, at: 0)
    }
    
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
        diceImageViewOne.transform = CGAffineTransform(rotationAngle: CGFloat(Int.random(in: 0...Int(Double(20626.5)))))
        diceImageViewTwo.transform = CGAffineTransform(rotationAngle: CGFloat(Int.random(in: 0...Int(Double(20626.5)))))
        
    }
    
}



