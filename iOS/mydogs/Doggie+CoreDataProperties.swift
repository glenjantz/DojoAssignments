//
//  Doggie+CoreDataProperties.swift
//  mydogs
//
//  Created by Glen Jantz on 3/21/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import Foundation
import CoreData


extension Doggie {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Doggie> {
        return NSFetchRequest<Doggie>(entityName: "Doggie");
    }

    @NSManaged public var color: String?
    @NSManaged public var name: String?
    @NSManaged public var picture: NSData?
    @NSManaged public var treat: String?

}
