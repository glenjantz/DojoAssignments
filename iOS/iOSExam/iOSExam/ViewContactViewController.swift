//
//  ViewContactViewController.swift
//  iOSExam
//
//  Created by Glen Jantz on 3/24/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import Foundation
import UIKit

class ViewContactViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    var contactfname: String?
    var contactlname: String?
    var contactnumber: String?
    var indexPath: NSIndexPath?
    var delegate: ViewContactDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = contactfname! + " " + contactlname!
        numberLabel.text = contactnumber!
       self.title = contactfname!
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        delegate?.donePressed(by: self)
    }
    
    
}
