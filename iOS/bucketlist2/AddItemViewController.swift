//
//  AddItemViewController.swift
//  bucketlist2
//
//  Created by Glen Jantz on 3/19/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import Foundation
import UIKit
class AddItemViewController: UITableViewController {
    weak var delegate: BucketListDelegate?
    var itemtobeedited: String?
    var indexPath: NSIndexPath?
    
    @IBOutlet weak var addItemTextField: UITextField!
    @IBAction func cancelPressed(_ sender: UIBarButtonItem) {
        delegate?.cancelButtonPressed(by: self)
    }
    
    @IBAction func savePressed(_ sender: UIBarButtonItem) {
        let text = addItemTextField.text!
        delegate?.saveButtonPressed(by: self, with: text, at: indexPath)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addItemTextField.text = itemtobeedited
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}
