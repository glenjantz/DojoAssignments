//
//  ViewController.swift
//  ninjaGold
//
//  Created by Glen Jantz on 3/8/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var farmLabel: UILabel!
    @IBOutlet weak var caveLabel: UILabel!
    @IBOutlet weak var houseLabel: UILabel!
    @IBOutlet weak var casinoLabel: UILabel!
//    var farmGold = 0
//    var caveGold = 0
//    var houseGold = 0
//    var casionGold = 0
        var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        scoreLabel.text = "\(score)"
        farmLabel.isHidden = true
        caveLabel.isHidden = true
        houseLabel.isHidden = true
        casinoLabel.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func farmButtonPressed(_ sender: UIButton) {
        farmLabel.isHidden = true
        caveLabel.isHidden = true
        houseLabel.isHidden = true
        casinoLabel.isHidden = true
        
        if sender.tag == 1 {
            if farmLabel.isHidden == true {
                farmLabel.isHidden = false
        }
        let farmGold = Int(arc4random_uniform(11)+10)
        farmLabel.text = "You earned \(farmGold) golds"
            score += farmGold
            scoreLabel.text = "\(score)"
        }
        else if sender.tag == 2 {
            if caveLabel.isHidden == true {
                caveLabel.isHidden = false
            }
        let caveGold = Int(arc4random_uniform(6)+5)
        caveLabel.text = "You earned \(caveGold) golds"
            score += caveGold
            scoreLabel.text = "\(score)"
    }
        else if sender.tag == 3 {
            if houseLabel.isHidden == true {
                houseLabel.isHidden = false
            }
        let houseGold = Int(arc4random_uniform(3)+3)
        houseLabel.text = "You earned \(houseGold) golds"
            score += houseGold
            scoreLabel.text = "\(score)"
        }
        else {
            if casinoLabel.isHidden == true{
                casinoLabel.isHidden = false
            }
        let gamble = Int(arc4random_uniform(2))
            if gamble == 0 {
                let casinoGold = Int(arc4random_uniform(51))
                casinoLabel.text = "You earned \(casinoGold) golds"
                score += casinoGold
                scoreLabel.text = "\(score)"
            }
            else{
                let casinoGolds = Int(arc4random_uniform(51))
                casinoLabel.text = "You lost \(casinoGolds) golds"
                score -= casinoGolds
                scoreLabel.text = "\(score)"
            }
        }
        
        
}
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        farmLabel.isHidden = true
        caveLabel.isHidden = true
        houseLabel.isHidden = true
        casinoLabel.isHidden = true
        
        farmLabel.text = ""
        caveLabel.text = ""
        houseLabel.text = ""
        casinoLabel.text = ""
        score = 0
        scoreLabel.text = "\(score)"
        
        
    }
    

}

