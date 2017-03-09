//
//  ViewController.swift
//  coldCall2
//
//  Created by Glen Jantz on 3/8/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    let nameBank = ["Glen","Car","Urian","Ali","Nikki"]
    var currentName = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Ready?"
        numberLabel.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func coldCallButtonPressed(_ sender: UIButton) {
        if numberLabel.isHidden == true{
            numberLabel.isHidden = false
        }
        
        currentName = Int(arc4random_uniform(UInt32(nameBank.count)))
        nameLabel.text = nameBank[currentName]
        let number = Int(arc4random_uniform(UInt32(5)+1))
        let numbers = String(number)
        numberLabel.text = numbers
        if number<=2{
            numberLabel.textColor = UIColor.red
        }
        else if number==5{
             numberLabel.textColor = UIColor.green
        }
        else {
            numberLabel.textColor = UIColor.orange
        }
        
        }
        
    }



