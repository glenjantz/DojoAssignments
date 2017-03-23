//
//  AddItemTableViewController.swift
//  BucketList4
//
//  Created by Glen Jantz on 3/19/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import Foundation
import UIKit


class AddItemTableViewController: UITableViewController {

    @IBOutlet weak var textField: UITextField!
    weak var delegate: BucketListItemDelegate?
    var itemtobeedited: String?
    var indexPath: NSIndexPath?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = itemtobeedited
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func savePressed(_ sender: UIBarButtonItem) {
        let text = textField.text!
        delegate?.saveButtonPressed(by: self, with: text, at: indexPath)
        
    }
    @IBAction func cancelPressed(_ sender: UIBarButtonItem) {
        delegate?.cancelButtonPressed(by: self)
        
    }
}
