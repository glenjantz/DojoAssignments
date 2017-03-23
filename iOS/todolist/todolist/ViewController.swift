//
//  ViewController.swift
//  todolist
//
//  Created by Glen Jantz on 3/20/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    var delegate: AddItemDelegate?
    
    
    @IBOutlet weak var titleInputLabel: UITextField!
    @IBOutlet weak var descriptionInputLabel: UITextView!
    @IBOutlet weak var dateInputLabel: UIDatePicker!
    
    @IBAction func addItemButtonPressed(_ sender: UIButton) {
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "MM/dd/yyyy"
        let formatteddate = dateformatter.string(from: dateInputLabel.date)
        self.delegate?.addItems(title: titleInputLabel.text!, description: descriptionInputLabel.text!, date: formatteddate, check: false)
        performSegue(withIdentifier: "unwind", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionInputLabel.text = "Edit Me"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

