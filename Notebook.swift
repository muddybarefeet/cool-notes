//
//  Notebook.swift
//  CoolNotes
//
//  Created by Anna Rogers on 7/24/16.
//  Copyright © 2016 Anna Rogers. All rights reserved.
//

import Foundation
import CoreData


class Notebook: NSManagedObject {

    convenience init(name: String, context: NSManagedObjectContext) {
        if let ent = NSEntityDescription.entityForName("Notebook", inManagedObjectContext: context) {
            self.init(entity: ent, insertIntoManagedObjectContext: context)
            self.name = name
            self.creationDate = NSDate()
        } else {
            fatalError("Unable to find Entity name")
        }

    }

}
