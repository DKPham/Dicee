//
//  ViewController.swift
//  Dicee
//
//  Created by Duy Pham on 9/13/17.
//  Copyright © 2018 Duy Khac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var rollButton: UIButton!

    var randomDiceIndex1: Int = 0
    var randomDiceIndex2 = 0

    let diceArrayImages = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rollButton.layer.cornerRadius = 5
        rollButton.layer.masksToBounds = true
        updateDiceImages()
    }

    @IBAction func rollButtonPressed(_ sender: Any) {
        updateDiceImages()
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    func updateDiceImages() {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        diceImageView1.image = UIImage(named: diceArrayImages[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArrayImages[randomDiceIndex2])
    }
}

