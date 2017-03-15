//
//  AddItemTableViewControllerDelegate.swift
//  bucketlist
//
//  Created by Glen Jantz on 3/14/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import Foundation
import UIKit

protocol AddItemTableViewControllerDelegate: class {
    func itemSaved(by controller: AddItemTableViewController, with text: String, at indexPath: NSIndexPath?)
    func cancelButtonPressed(by controller: AddItemTableViewController)
}
