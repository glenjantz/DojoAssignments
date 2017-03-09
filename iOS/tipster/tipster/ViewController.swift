//
//  ViewController.swift
//  tipster
//
//  Created by Glen Jantz on 3/9/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var lowTip: UILabel!
    @IBOutlet weak var midTip: UILabel!
    @IBOutlet weak var highTip: UILabel!
    
    
    @IBOutlet weak var lowTipNum: UILabel!
    @IBOutlet weak var midTipNum: UILabel!
    @IBOutlet weak var highTipNum: UILabel!
    
    @IBOutlet weak var lowTipTotal: UILabel!
    @IBOutlet weak var midTipTotal: UILabel!
    @IBOutlet weak var highTipTotal: UILabel!
    
    
    @IBOutlet weak var groupSize: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
    }
    
    

    @IBAction func groupSlider(_ sender: UISlider) {
    }

    
    @IBAction func tipSlider(_ sender: UISlider) {
    }
    
}

