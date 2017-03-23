//
//  AddItemTableViewController.swift
//  bucketlist5
//
//  Created by Glen Jantz on 3/22/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import Foundation
import UIKit

class AddItemTableViewController: UIViewController {
    
    var delegate: AddItemDelegate?
    var indexPath: NSIndexPath?
    var editItem: String?
    
    @IBOutlet weak var addItemTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        addItemTextField.text = editItem
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelPressed(_ sender: UIBarButtonItem) {
               delegate?.cancelButtonPressed(by: self)
    }
    
    
    @IBAction func savePressed(_ sender: UIBarButtonItem) {
        let text = addItemTextField.text
        delegate?.saveButtonPressed(by: self, with: text!, at: indexPath)
        
    }
    
}
