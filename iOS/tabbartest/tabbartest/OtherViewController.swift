//
//  OtherViewController.swift
//  tabbartest
//
//  Created by Glen Jantz on 3/21/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import Foundation

import UIKit

class OtherViewController: UIViewController {
    
    @IBOutlet weak var secondpagelabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("SecondViewController viewWillAppear")
    }
    
}
