//
//  Note.swift
//  CoolNotes
//
//  Created by Anna Rogers on 7/24/16.
//  Copyright © 2016 Anna Rogers. All rights reserved.
//

import Foundation
import CoreData


class Note: NSManagedObject {

    //init method
    convenience init(text: String = "New Note",  context : NSManagedObjectContext){
        if let ent = NSEntityDescription.entityForName("Note", inManagedObjectContext: context){
            //create a new instance
            self.init(entity: ent, insertIntoManagedObjectContext: context)
            //init properties
            self.text = text
            self.createdDate = NSDate()
        } else {
            fatalError("Unable to find entity name!")
        }
    }
    
    var humanReadableAge: String {
        let formatTime = NSDateFormatter()
        formatTime.timeStyle = .NoStyle
        formatTime.dateStyle = .ShortStyle
        formatTime.doesRelativeDateFormatting = true
        formatTime.locale = NSLocale.currentLocale()
        
        return formatTime.stringFromDate(createdDate!)
    }
    

}
