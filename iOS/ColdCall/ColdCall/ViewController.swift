//
//  ViewController.swift
//  ColdCall
//
//  Created by Glen Jantz on 3/8/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    let nameBank = ["Glen","Car","Urian","Ali","Nikki"]
    var currentName = 0
    
    
    @IBAction func coldCallButtonPressed(_ sender: UIButton) {
        currentName = Int(arc4random_uniform(UInt32(nameBank.count)))
        nameLabel.text = nameBank[currentName]
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentName = Int(arc4random_uniform(UInt32(nameBank.count)))
        nameLabel.text = nameBank[currentName]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

