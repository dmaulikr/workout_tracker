//
//  ExerciseTableViewController.swift
//  Workout Tracker
//
//  Created by Cory Eighan on 6/26/16.
//  Copyright © 2016 JoyWhack. All rights reserved.
//

import UIKit

class ExerciseTableViewController: UITableViewController {
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // 1
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0;
        
    }
    
    
//    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        // 3
////        let cell = tableView.dequeueReusableCellWithIdentifier("carCell", forIndexPath: indexPath) as! UITableViewCell
////        
////        cell.textLabel!.text = [indexPath.row]  
////        return cell
//    }

}
