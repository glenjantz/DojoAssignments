//
//  ViewController.swift
//  madlibs
//
//  Created by Glen Jantz on 3/16/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    var adjective: String?
    var verb1: String?
    var verb2: String?
    var noun: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
@IBAction func unwind(_ segue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController) {
    mainLabel.text = "We are having a perfectly \(adjective!) time now. Later we will \(verb1!) and \(verb2!) in the \(noun!)."
    print (adjective!)
     print (verb1!)
     print (verb2!)
     print (noun!)
    reloadInputViews()
}

    
    
    
    
//  @IBAction func unwind(_ segue: UIStoryboardSegue) {
//        let controller = segue.source as! OtherViewController
//        let adjective = controller.adjectiveTextField.text!
//        let verb1 = controller.verb1TextField.text!
//        let verb2 = controller.verb2TextField.text!
//        let noun = controller.nounTextField.text!
//        let str = "We are having a perfectly \(adjective) time now. Later we will \(verb1) and \(verb2) in the \(noun)."
//        mainLabel.text = str

//    
//    }

}

