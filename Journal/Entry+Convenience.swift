//
//  Entry+Convenience.swift
//  Journal
//
//  Created by Colin Smith on 3/14/19.
//  Copyright © 2019 DevMountain. All rights reserved.
//

import Foundation
import CoreData



extension Entry {
    
    @discardableResult convenience init(titleParameter: String, textParameter: String, timestampParameter: Date = Date(), managedObjectContextParameter: NSManagedObjectContext = CoreDataStack.context){
        self.init(context: managedObjectContextParameter)
        self.title = titleParameter
        self.text = textParameter
        self.timestamp = timestampParameter
    }
}
