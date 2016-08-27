//
//  ExerciseTableViewController.swift
//  Workout Tracker
//
//  Created by Cory Eighan on 6/26/16.
//  Copyright © 2016 JoyWhack. All rights reserved.
//

import UIKit
import CoreData

class ExerciseTableViewController: UITableViewController {
    
    var exercises = [NSManagedObject]()
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.retrieveTableData()
        self.tableView.reloadData()
        
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return exercises.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("exerciseCell", forIndexPath: indexPath)
        
        let singleExercise = exercises[indexPath.row]
        
        cell.textLabel!.text =
            singleExercise.valueForKey("name") as? String
        
        return cell
    }
    
    private func retrieveTableData() {
        let appDelegate =
        UIApplication.sharedApplication().delegate as! AppDelegate
        
        let managedContext = appDelegate.managedObjectContext
        
        let fetchRequest = NSFetchRequest(entityName: "Exercise")
        
        do {
            let results = try managedContext.executeFetchRequest(fetchRequest)
            exercises = results as! [NSManagedObject]
        } catch let error as NSError {
            print("Could not fetch \(error), \(error.userInfo)")
        }
    }
}
