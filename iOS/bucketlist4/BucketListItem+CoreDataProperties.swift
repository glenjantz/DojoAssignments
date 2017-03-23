//
//  BucketListItem+CoreDataProperties.swift
//  BucketList4
//
//  Created by Glen Jantz on 3/20/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import Foundation
import CoreData


extension BucketListItem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<BucketListItem> {
        return NSFetchRequest<BucketListItem>(entityName: "BucketListItem");
    }

    @NSManaged public var text: String?

}
