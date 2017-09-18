//
//  ViewController.swift
//  DiceShaker
//
//  Created by Jose Melendez on 9/18/17.
//  Copyright © 2017 JoseMelendez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    
    var randomDiceIndex2 : Int = 0

    //IB-Outlets
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    //Array of all the names of the dice images
    let diceImageArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
    }


    //IB-Actions
    @IBAction func rollButtonTapped(_ sender: UIButton) {
        
        updateDiceImages()
    
    }
    
    //Create a function to update the dice images
    func updateDiceImages() {
        
        //Generate random number between 0-5
        randomDiceIndex1 = Int(arc4random_uniform(6))
        
        //Generate random number between 0-5
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        //Change the dice image property
        diceImageView1.image = UIImage(named: diceImageArray[randomDiceIndex1])
        
        diceImageView2.image = UIImage(named: diceImageArray[randomDiceIndex2])
        
    }
}

