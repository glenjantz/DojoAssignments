//
//  DirectionViewController.swift
//  northwesteastsouth
//
//  Created by Glen Jantz on 3/15/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import Foundation
import UIKit

class DirectionViewController: UIViewController {
    var output: String?
    
    @IBOutlet weak var backButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
       backButton.setTitle(output, for: UIControlState.normal)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
//        dismiss(animated: true, completion: nil)
    }
}
