//
//  AddItemDelegate.swift
//  bucketlist5
//
//  Created by Glen Jantz on 3/22/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import Foundation
import UIKit
protocol AddItemDelegate: class {
    func cancelButtonPressed(by controller: AddItemTableViewController)
    func saveButtonPressed(by controller: AddItemTableViewController, with text: String, at indexPath: NSIndexPath?)
}
