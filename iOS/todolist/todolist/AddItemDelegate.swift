//
//  AddItemDelegate.swift
//  todolist
//
//  Created by Glen Jantz on 3/20/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import Foundation
import UIKit

protocol AddItemDelegate: class {
    func addItems(title:String,description:String,date:String,check:Bool)
}
