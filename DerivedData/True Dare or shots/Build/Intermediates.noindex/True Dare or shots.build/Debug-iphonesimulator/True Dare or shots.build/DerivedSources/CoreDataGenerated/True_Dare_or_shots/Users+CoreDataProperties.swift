//
//  Users+CoreDataProperties.swift
//  
//
//  Created by Joel Lozano on 21/09/18.
//
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Users {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Users> {
        return NSFetchRequest<Users>(entityName: "Users")
    }

    @NSManaged public var name: String?

}
