//
//  customcell.swift
//  customcell
//
//  Created by Glen Jantz on 3/20/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import Foundation
import UIKit

protocol CustomCellDelegate: class {
    func buttonPressed(withValue value: Int)
}

class BinaryTableViewCell: UITableViewCell {
    
   // var number: Int?
    var delegate: CustomCellDelegate?
    
    @IBOutlet var Label: UILabel!
    

    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let val: Int
        
        if sender.titleLabel?.text == "+" {
            val = Int(self.Label.text!)!
        } else {
            val = (-1 * Int(self.Label.text!)!)
        }
        delegate?.buttonPressed(withValue: val)
        
    }
    
    
}
