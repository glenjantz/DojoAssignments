//
//  BLItem+CoreDataProperties.swift
//  bucketlist5
//
//  Created by Glen Jantz on 3/22/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import Foundation
import CoreData


extension BLItem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<BLItem> {
        return NSFetchRequest<BLItem>(entityName: "BLItem");
    }

    @NSManaged public var text: String?

}
