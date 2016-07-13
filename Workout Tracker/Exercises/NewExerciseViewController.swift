//
//  NewExerciseViewController.swift
//  Workout Tracker
//
//  Created by Cory Eighan on 6/26/16.
//  Copyright © 2016 JoyWhack. All rights reserved.
//

import UIKit
import CoreData

class NewExerciseViewController: UIViewController {

    var exercises = [NSManagedObject]()
    
    @IBOutlet weak var exerciseName: UITextField!
    @IBOutlet weak var exerciseDetails: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func createNewExercise(sender: UIButton) {
//        if (exerciseName.text!.isEmpty || exerciseDetails.text!.isEmpty) {
//            
//            
//        }
//        else {
//        
            let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            let manageContext = appDelegate.managedObjectContext
        
            let entity = NSEntityDescription.entityForName("Exercise", inManagedObjectContext: manageContext)
            let singleExercise = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: manageContext)
        
            singleExercise.setValue(exerciseName.text!, forKey: "name")
            singleExercise.setValue(exerciseDetails.text!, forKey: "details")
        
            do {
                try manageContext.save()

                exercises.append(singleExercise)
                self.performSegueWithIdentifier("unwindToExerciseView", sender: self)
            } catch let error as NSError  {
                print("Could not save \(error), \(error.userInfo)")
            }
//        }
    }
    
}
