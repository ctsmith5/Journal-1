//
//  EntryController.swift
//  Journal
//
//  Created by Caleb Hicks on 10/1/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import Foundation

class EntryController {
    
    static let shared = EntryController()
    
    init() {
        
    }
    
    func addEntryWith(title: String, text: String) {
        
        Entry(titleParameter: title, textParameter: text)
        saveToPersistentStore()
    }
    
    func remove(entry: Entry) {
		
       entry.managedObjectContext?.delete(entry)
        saveToPersistentStore()
    }
    
    func update(entry: Entry, with title: String, text: String) {
        
        
        entry.title = title
        entry.text = text
        saveToPersistentStore()
    }
	
	// MARK: - Persistence
    private func loadFromPersistentStore(){
        
    }
    private func saveToPersistentStore(){
        
        try! CoreDataStack.context.save()
    }
	
	// MARK: Properties
	
	private(set) var entries = [Entry]()
}
