//
//  ViewController.swift
//  burgerCountdown
//
//  Created by Anne Cahalan on 6/22/18.
//  Copyright © 2018 Anne Cahalan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var burgerEmojiLabel: UILabel!
    @IBOutlet weak var burgerCountLabel: UILabel!
    @IBOutlet weak var sellABurgerButton: UIButton!

    var numberOfBurgers = 25 {
        didSet {
            updateBurgerUI()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBurgerUI()
    }
    
    @IBAction func decrementNumberOfBurgers() {
        numberOfBurgers = (numberOfBurgers - 1)
    }
    
    private func updateBurgerUI() {
        updateBurgerEmojiLabel()
        updateBurgerCountLabel()
    }
    
    private func updateBurgerCountLabel() {
        burgerCountLabel.text = "There are \(numberOfBurgers) cheeseburgers left"
    }
    
    private func updateBurgerEmojiLabel() {
        var burgerEmojis = ""
        for _ in 1...numberOfBurgers {
            burgerEmojis += "🍔"
        }
        
        burgerEmojiLabel.text = burgerEmojis
    }


}

