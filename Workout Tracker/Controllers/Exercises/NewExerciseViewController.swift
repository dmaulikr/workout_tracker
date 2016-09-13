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
    
    @IBOutlet weak var exerciseName: UITextField!
    @IBOutlet weak var exerciseDetails: UITextField!
    lazy var errMessage = ""

    
    @IBAction func createNewExercise(sender: UIButton) {
        if (exerciseName.text!.isEmpty || exerciseDetails.text!.isEmpty) {
            
            errMessage = "Please fill in all text fields!"
            errorAlertMessage(errMessage)
        }
        else {
            saveExerciseObject()
        }
    }
    
    private func saveExerciseObject() {
        
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let manageContext = appDelegate.managedObjectContext
        
        // Create Entity
        let entity = NSEntityDescription.entityForName("Exercise", inManagedObjectContext: manageContext)
        let singleExercise = Exercise(entity: entity!, insertIntoManagedObjectContext: manageContext)
        
        setExerciseProperties(singleExercise)
        
        do {
            try manageContext.save()
            
            self.performSegueWithIdentifier("unwindToExerciseView", sender: self)
        } catch let error as NSError  {
            errMessage = "Could not save \(error), \(error.userInfo)"
            print(errMessage)
            errorAlertMessage(errMessage)
        }
    }
    
    private func setExerciseProperties(singleExercise: Exercise) {
        
        singleExercise.name = exerciseName.text!
        singleExercise.details = exerciseDetails.text!
    }
    
    private func errorAlertMessage(errorDescription: String) {
        
        let alertController = UIAlertController(title: "Error", message:
            errorDescription, preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
}
