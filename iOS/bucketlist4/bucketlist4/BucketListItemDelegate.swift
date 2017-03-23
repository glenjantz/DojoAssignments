//
//  File.swift
//  BucketList4
//
//  Created by Glen Jantz on 3/19/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import Foundation
import UIKit

protocol BucketListItemDelegate: class {
    func cancelButtonPressed(by controller: AddItemTableViewController)
    func saveButtonPressed(by controller: AddItemTableViewController, with text: String, at indexPath: NSIndexPath?)
}
