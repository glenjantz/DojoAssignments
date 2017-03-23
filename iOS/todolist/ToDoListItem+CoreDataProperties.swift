//
//  ToDoListItem+CoreDataProperties.swift
//  todolist
//
//  Created by Glen Jantz on 3/21/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import Foundation
import CoreData


extension ToDoListItem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ToDoListItem> {
        return NSFetchRequest<ToDoListItem>(entityName: "ToDoListItem");
    }

    @NSManaged public var date: String?
    @NSManaged public var descriptiontext: String?
    @NSManaged public var title: String?
    @NSManaged public var check: Bool

}
