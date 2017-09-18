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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //IB-Actions
    @IBAction func rollButtonTapped(_ sender: UIButton) {
        
        //Generate random number between 0-5
        randomDiceIndex1 = Int(arc4random_uniform(6))
        
        //Generate random number between 0-5
        randomDiceIndex2 = Int(arc4random_uniform(6))
    }
    
}

