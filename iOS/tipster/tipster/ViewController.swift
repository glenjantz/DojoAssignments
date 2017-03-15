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
    
    var total = "0"
    var dotExists = false
    var group: Double = 1
    var generosity: Double = 5
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lowTip.text = "10%"
        midTip.text = "15%"
        highTip.text = "20%"
        refreshNumbers()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    @IBAction func buttonPressed(_ sender: UIButton) {
        // var button = String(sender.tag)
        // if total == button{
        // total += "\(button)"}
        // doesn't work for 0 , c , .
        
        if total == "0" {
            total = ""
        }
        
        if sender.tag == 1 {
            total += "7"
            
            
        }
        else if sender.tag == 2 {
            total += "8"
        }
        else if sender.tag == 3 {
            total += "9"
        }
        else if sender.tag == 4 {
            total += "4"
        }
        else if sender.tag == 5 {
            total += "5"
        }
        else if sender.tag == 6{
            total += "6"
        }
        else if sender.tag == 7 {
            total += "1"
        }
        else if sender.tag == 8 {
            total += "2"
        }
        else if sender.tag == 9 {
            total += "3"
        }
        else if sender.tag == 10 {
            total = "0"
            dotExists = false
        }
        else if sender.tag == 11 {
            total += "0"
        }
        else{
            if dotExists == false {
                total += "."
                dotExists = true
            }

        }
        refreshNumbers()
        totalLabel.text = "\(total)"
    }
    
    func refreshNumbers(){
            let lowtipnum = String(format: "%.2f", (Double(total)! * Double((generosity-5)/100))/group)
            let midtipnum = String(format: "%.2f", (Double(total)! * Double(generosity/100))/group)
            let hightipnum = String(format: "%.2f", (Double(total)! * Double((generosity+5)/100))/group)
            let lowtiptotal = String(format: "%.2f", (Double(total)! * Double((generosity-5)/100) + Double(total)!)/group)
            let midtiptotal = String(format: "%.2f", (Double(total)! * Double(generosity/100) + Double(total)!)/group)
            let hightiptotal = String(format: "%.2f", (Double(total)! * Double((generosity+5)/100) + Double(total)!)/group)
            lowTip.text = String(Int(generosity-5))
            midTip.text = String(Int(generosity))
            highTip.text = String(Int(generosity+5))
            lowTipNum.text = lowtipnum
            midTipNum.text = midtipnum
            highTipNum.text = hightipnum
            lowTipTotal.text = lowtiptotal
            midTipTotal.text = midtiptotal
            highTipTotal.text = hightiptotal
    }

    @IBAction func groupSlider(_ sender: UISlider) {
        group = Double(Int(sender.value))
        groupSize.text = String(Int(sender.value))
        refreshNumbers()
        
    }

    
    @IBAction func tipSlider(_ sender: UISlider) {
        generosity = Double(Int(sender.value))
        refreshNumbers()
    }
    
}

