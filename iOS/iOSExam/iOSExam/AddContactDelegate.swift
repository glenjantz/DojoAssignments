//
//  AddContactDelegate.swift
//  iOSExam
//
//  Created by Glen Jantz on 3/24/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import Foundation
import UIKit
protocol AddContactDelegate: class {
    func cancelPressed(by controller: AddContactViewController)
    func savePressed(by controller: AddContactViewController, with fname: String, with lname: String, with number: String)
}
