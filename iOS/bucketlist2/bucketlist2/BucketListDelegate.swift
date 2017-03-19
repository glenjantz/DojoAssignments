//
//  BucketListDelegate.swift
//  bucketlist2
//
//  Created by Glen Jantz on 3/19/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import Foundation
import UIKit

protocol BucketListDelegate: class {
    func cancelButtonPressed(by controller: AddItemViewController)
    func saveButtonPressed(by controller: AddItemViewController, with text: String, at indexPath: NSIndexPath?)
}
