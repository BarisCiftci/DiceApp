//
//  ViewController.swift
//  DiceApp
//
//  Created by Baris Ciftci on 15/05/2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Background gradient color
        let backgroundGradientColor = CAGradientLayer()
        
        backgroundGradientColor.colors = [
            UIColor(red: 41.0 / 255.0,
                    green: 101.0 / 255.0,
                    blue: 34.0 / 255.0,
                    alpha: 1.0).cgColor,
            UIColor(red: 11.0 / 255.0,
                    green: 27.0 / 255.0,
                    blue: 9.0 / 255.0,
                    alpha: 1.0).cgColor]
        
        backgroundGradientColor.frame = view.frame
        backgroundGradientColor.startPoint = CGPoint(x: 0.0, y: 0.0)
        backgroundGradientColor.endPoint = CGPoint(x: 1.0, y: 1.0)
        
        view.layer.addSublayer(backgroundGradientColor)
        
    }
    
    
    
    
    
    
}



