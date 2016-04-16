//
//  ViewController.swift
//  BlackJack
//
//  Created by HIRANO TOMOKAZU on 2/14/16.
//  Copyright © 2016 HIRANO TOMOKAZU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImage: UIImageView!
    
    @IBOutlet weak var secondCardImage: UIImageView!
    
    @IBOutlet weak var playRoundButton: UIButton!
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var playerScore: UILabel!
    
    @IBOutlet weak var enemyScore: UILabel!
    
    var playNameArray:[String] = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    var playerScoreTotal = 0
    var enemyScoreTotal = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
    
        // Randomize a number for the first imageview
        let firstRandomNumber: Int = Int(arc4random_uniform(13))
        
        // Contruct a string with the random number
        let firstCardString:String = self.playNameArray[firstRandomNumber]
        
        // Set the first card image view to the asset corresponding to the randomized number
        self.firstCardImage.image = UIImage(named: firstCardString)
        
        print(firstRandomNumber)
        
        // Randomize a number for the second imageview
        let secondRandomNumber: Int = Int(arc4random_uniform(13))
        
        // Contruct a string with the random number
        let secondCardString:String = self.playNameArray[secondRandomNumber]
        
        // Set the second card image view to the asset corresponding to the randomized number
        self.secondCardImage.image = UIImage(named: secondCardString)
        
        print(secondRandomNumber)
        
        if firstRandomNumber > secondRandomNumber {
            playerScoreTotal += 1
            self.playerScore.text = String(playerScoreTotal)
        }
        else if firstRandomNumber == secondRandomNumber {
            
        }
        else {
            enemyScoreTotal += 1
            self.enemyScore.text = String(enemyScoreTotal)
        }
    }
    

}

