//
//  Exercise+CoreDataProperties.swift
//  Workout Tracker
//
//  Created by Cory Eighan on 9/11/16.
//  Copyright © 2016 JoyWhack. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Exercise {

    @NSManaged var details: String?
    @NSManaged var name: String?

}
