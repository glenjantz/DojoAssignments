//
//  OtherViewController.swift
//  modalsegues
//
//  Created by Glen Jantz on 3/13/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import UIKit

class OtherViewController: UIViewController {
    @IBOutlet weak var labelText: UILabel!
    var output: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelText.text = output
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func dismissedButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
