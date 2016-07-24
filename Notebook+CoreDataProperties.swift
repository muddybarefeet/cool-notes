//
//  Notebook+CoreDataProperties.swift
//  CoolNotes
//
//  Created by Anna Rogers on 7/24/16.
//  Copyright © 2016 Anna Rogers. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Notebook {

    @NSManaged var name: String?
    @NSManaged var creationDate: NSDate?
    @NSManaged var notes: Note?

}
