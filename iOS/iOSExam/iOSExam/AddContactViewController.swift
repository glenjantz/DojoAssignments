//
//  AddContactViewController.swift
//  iOSExam
//
//  Created by Glen Jantz on 3/24/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import Foundation
import UIKit
class AddContactViewController: UIViewController {
    
    var delegate: AddContactDelegate?
    
    
    @IBOutlet weak var fnameLabel: UITextField!
    
    @IBOutlet weak var lnameLabel: UITextField!
    
    @IBOutlet weak var numberLabel: UITextField!
    
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        delegate?.cancelPressed(by: self)
    }

    @IBAction func saveButtonPressed(_ sender: UIBarButtonItem) {
        delegate?.savePressed(by: self, with: fnameLabel.text!, with: lnameLabel.text!, with: numberLabel.text!)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
