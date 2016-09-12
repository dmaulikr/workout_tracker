//
//  ExerciseTest.swift
//  Workout Tracker
//
//  Created by Cory Eighan on 9/10/16.
//  Copyright © 2016 JoyWhack. All rights reserved.
//

import XCTest
@testable import Workout_Tracker

class ExerciseTest: XCTestCase {
    
    var newExerciseVC: UIViewController!
    
    override func setUp() {
        super.setUp()
       
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        newExerciseVC = storyboard.instantiateInitialViewController() as! NewExerciseViewController
    }
    
    override func tearDown() {
        
    }

    func testSaveNewExercise() {
        
    }

}
