//
//  EditContactDelegate.swift
//  iOSExam
//
//  Created by Glen Jantz on 3/24/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import Foundation
import UIKit

protocol EditContactDelegate: class {
    func editcancelpressed(by controller: EditContactViewController)
    func editsavepressed(by controller: EditContactViewController, with fname: String, with lname: String, with number: String, indexPath: NSIndexPath)

}
