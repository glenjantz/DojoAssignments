//
//  ViewController.swift
//  calculator
//
//  Created by Glen Jantz on 3/22/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var totalLabel: UILabel!
    var total = ""
    var actualtotal = ""
    var dotexists = false
    var neg = false
    var operation = 0.0
    var addstatus = false
    var multiplystatus = false
    var dividestatus = false
    var minusstatus = false
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        total += String(sender.tag)
        totalLabel.text = total
    }
    
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        total = ""
        totalLabel.text = "0"
        dotexists = false
        neg = false
        operation = 0.0
        actualtotal = ""
    }
    
    @IBAction func decimalPressed(_ sender: UIButton) {
        if dotexists == false {
            total += "."
            totalLabel.text = total
            dotexists = true
        }
        
    }
    
    @IBAction func negativePressed(_ sender: UIButton) {
        if neg == false{
            total = String(Double(total)! * Double(-1))
            totalLabel.text = total
            neg = true
        }
        else {
            total = String(Double(total)! * Double(-1))
            totalLabel.text = total
            neg = false
        }
    }
    @IBAction func percentagePressed(_ sender: UIButton) {
        total = String(Double(total)!/100)
        totalLabel.text = total
    }
    
    @IBAction func dividePressed(_ sender: UIButton) {
        if dividestatus == true {
            actualtotal = String(operation / Double(total)!)
            operation = Double(actualtotal)!
            //    operation = Double(total)!
            total = ""
            totalLabel.text = "0"
            dotexists = false
        }
        else {
            operation = Double(total)!
            total = ""
            totalLabel.text = "0"
            dividestatus = true
            dotexists = false
        }

    }
    
    @IBAction func equalsPressed(_ sender: UIButton) {
        if dividestatus == true {
            if actualtotal == "" {
                total = String(operation / Double(total)!)
                totalLabel.text = total
                dividestatus = false
            }
            else {
                totalLabel.text = String(Double(actualtotal)! / Double(total)!)
                addstatus = false
            }
        }
        if multiplystatus == true {
            if actualtotal == "" {
                total = String(operation * Double(total)!)
                totalLabel.text = total
                multiplystatus = false
            }
            else {
                totalLabel.text = String(Double(actualtotal)! * Double(total)!)
                addstatus = false
            }
        
            
        }
        if addstatus == true {
            if actualtotal == "" {
                total = String(operation + Double(total)!)
                totalLabel.text = total
                addstatus = false
            }
            else {
                totalLabel.text = String(Double(actualtotal)! + Double(total)!)
                addstatus = false
            }

            
        }
        if minusstatus == true {
            if actualtotal == "" {
                total = String(operation - Double(total)!)
                totalLabel.text = total
                minusstatus = false
            }
            else {
                totalLabel.text = String(Double(actualtotal)! - Double(total)!)
                addstatus = false
            }
        }
    }
    
    @IBAction func multiplyPressed(_ sender: UIButton) {
        if multiplystatus == true {
            actualtotal = String(operation * Double(total)!)
            operation = Double(actualtotal)!
            //    operation = Double(total)!
            total = ""
            totalLabel.text = "0"
            dotexists = false
            
        }
        else {
            operation = Double(total)!
            total = ""
            totalLabel.text = "0"
            multiplystatus = true
            dotexists = false
        }
    }
    
    @IBAction func minusPressed(_ sender: UIButton) {
        if minusstatus == true {
            actualtotal = String(operation - Double(total)!)
            operation = Double(actualtotal)!
            //    operation = Double(total)!
            total = ""
            totalLabel.text = "0"
            dotexists = false
        }
        else{
            operation = Double(total)!
            total = ""
            totalLabel.text = "0"
            minusstatus = true
            dotexists = false
        }
    }
    
    @IBAction func addPressed(_ sender: UIButton) {
        if addstatus == true {
                actualtotal = String(operation + Double(total)!)
                operation = Double(actualtotal)!
            //    operation = Double(total)!
                total = ""
                totalLabel.text = "0"
                dotexists = false
            
        }
        else {
            operation = Double(total)!
            total = ""
            totalLabel.text = "0"
            addstatus = true
            dotexists = false
        }

    }
}

