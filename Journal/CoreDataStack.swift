//
//  CoreDataStack.swift
//  Journal
//
//  Created by Colin Smith on 3/14/19.
//  Copyright © 2019 DevMountain. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStack {
    
    static let container: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "Journal")
        container.loadPersistentStores() { (_, error) in
            if let error = error as NSError? {
                fatalError("Failed to load Persistent Store \(error), \(error.userInfo)")
                
            }
        }
        return container
    }()
    static var context: NSManagedObjectContext { return container.viewContext}
    
}
