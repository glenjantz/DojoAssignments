//
//  AddItemTableViewController.swift
//  bucketlist3
//
//  Created by Glen Jantz on 3/19/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import Foundation
import UIKit

class AddItemTableViewController: UITableViewController {
    
    weak var delegate: BucketListDelegate?
    var itemtobeedited: String?
    var indexPath: NSIndexPath?
    @IBOutlet weak var saveTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        saveTextField.text = itemtobeedited
    }
    
    
    @IBAction func cancelPressed(_ sender: UIBarButtonItem) {
        delegate?.cancelButtonPressed(by: self)
    }
    
    @IBAction func savePressed(_ sender: UIBarButtonItem) {
        let text = saveTextField.text!
        delegate?.saveButtonPressed(by: self, with: text, at: indexPath)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
