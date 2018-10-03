//
//  StoreItem+CoreDataProperties.swift
//  
//
//  Created by Diego on 03/10/18.
//
//

import Foundation
import CoreData


extension StoreItem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<StoreItem> {
        return NSFetchRequest<StoreItem>(entityName: "StoreItem")
    }

    @NSManaged public var name: String?
    @NSManaged public var imagename: String?
    @NSManaged public var purchase: Bool
    @NSManaged public var productidentifier: String?

}
