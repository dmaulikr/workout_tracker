//
//  ExerciseTableViewController.swift
//  Workout Tracker
//
//  Created by Cory Eighan on 6/26/16.
//  Copyright © 2016 JoyWhack. All rights reserved.
//

import UIKit

class ExerciseTableViewController: UITableViewController {
    
    var exercise = [String]()
    var newExercise: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        exercise = ["Incline Bench Press","Pull ups","Bicep curls"]
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return exercise.count
        
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("exerciseCell", forIndexPath: indexPath)
        
        cell.textLabel!.text = exercise[indexPath.row]
        return cell
    }

}
