//
//  CoreDataManger.swift
//  EventsApp
//
//  Created by eslam dweeb on 8/29/20.
//  Copyright © 2020 eslam dweeb. All rights reserved.
//

import UIKit
import CoreData

final class CoreDataManger{
    
    lazy var persistentContainer:NSPersistentContainer = {
       let persistentContainer = NSPersistentContainer(name: "EventsApp")
        persistentContainer.loadPersistentStores { (_, error) in
            print(error?.localizedDescription ?? "")
        }
        return persistentContainer
    }()
    
    var moc:NSManagedObjectContext{
        persistentContainer.viewContext
    }
    
    func saveEvent(name:String,date:Date,image:UIImage){
        let event = Event(context: moc)
        event.setValue(name, forKey: "name")
        event.setValue(date, forKey: "date")
        let imageData = image.jpegData(compressionQuality: 1)
        event.setValue(imageData, forKey: "image")
        do{
            try moc.save()
        }catch {
            print(error)
        }
    }
    
    func fetchEvents() -> [Event] {
        do{
            let fetchRequest = NSFetchRequest<Event>(entityName: "Event")
            let events = try moc.fetch(fetchRequest)
            return events
        }catch {
            print(error)
            return []
        }
    }
}
