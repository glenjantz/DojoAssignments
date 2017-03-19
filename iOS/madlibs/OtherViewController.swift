//
//  OtherViewController.swift
//  madlibs
//
//  Created by Glen Jantz on 3/16/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import Foundation
import UIKit

class OtherViewController: UIViewController {
    
    @IBOutlet weak var adjectiveTextField: UITextField!
    @IBOutlet weak var verb1TextField: UITextField!
    @IBOutlet weak var verb2TextField: UITextField!
    @IBOutlet weak var nounTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        adjectiveTextField.placeholder = "adjective"
        verb1TextField.placeholder = "verb"
        verb2TextField.placeholder = "verb"
        nounTextField.placeholder = "noun"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submitPressed(_ sender: Any) {
        performSegue(withIdentifier: "unwind", sender: self)
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ViewController {
            destination.adjective = adjectiveTextField.text!
            destination.verb1 = verb1TextField.text!
            destination.verb2 = verb2TextField.text!
            destination.noun = nounTextField.text!
        }
    }
    
    
    
}

