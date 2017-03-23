//
//  CustomCell.swift
//  todolist
//
//  Created by Glen Jantz on 3/20/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import Foundation
import UIKit


//protocol MyCellDelegate: class {
//    func addItem(title:String,description:String,date:String)
//}


class CustomCell: UITableViewCell{
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
}
