//
//  EditContactViewController.swift
//  iOSExam
//
//  Created by Glen Jantz on 3/24/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import Foundation
import UIKit
class EditContactViewController: UIViewController {
    var fnameedit: String?
    var lnameedit: String?
    var numberedit: String?
    var indexPath: NSIndexPath?
    var delegate: EditContactDelegate?
    
    @IBOutlet weak var firstNameLabel: UITextField!
    
    @IBOutlet weak var lastNameLabel: UITextField!
    
    @IBOutlet weak var numberLabel: UITextField!
    
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        delegate?.editcancelpressed(by: self)
    }
    
    @IBAction func saveButtonPressed(_ sender: UIBarButtonItem) {
        delegate?.editsavepressed(by: self, with: firstNameLabel.text!, with: lastNameLabel.text!, with: numberLabel.text!, indexPath: indexPath!)
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstNameLabel.text = fnameedit
        lastNameLabel.text = lnameedit
        numberLabel.text = numberedit
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
