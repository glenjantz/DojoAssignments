//
//  AddItemTableViewController.swift
//  bucketlist
//
//  Created by Glen Jantz on 3/14/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import Foundation
import UIKit

class AddItemTableViewController: UITableViewController {
    var item: String?
    var indexPath: NSIndexPath?
    weak var delegate: AddItemTableViewControllerDelegate?
    @IBOutlet weak var itemTextField: UITextField!
    
    
    @IBAction func saveButtonPressed(_ sender: UIBarButtonItem) {
        let text = itemTextField.text
        delegate?.itemSaved(by: self, with: text!, at: indexPath)
    }
    
    
   
    
    

    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        delegate?.cancelButtonPressed(by: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        itemTextField.text = item
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


 

}
