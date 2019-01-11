//
//  ViewController.swift
//  Properties
//
//  Created by Rakhi on 11/01/19.
//  Copyright © 2019 myself. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var per : Person? {
        didSet {
            print("Called after setting the new value")
            if let name = per?.name {
                let oldV = oldValue?.name ?? ""
                print("New name is \(name) and old name is \(oldV)")
            }
        }
    }
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //structure
        var fixed = FixedLengthRangeStruct.init(sFValue: 0, sLength: 3)
        fixed.sFValue = 5
        print("fixed \(fixed.sFValue) & \(fixed.sLength)")
        
        
        //class - cannot vary let stored proerty value
        let cFixed = FixedLengthRangeClass.init()
        cFixed.cFValue = 1
        print("cFixed \(cFixed.cFValue) & \(cFixed.cLength)")
        
        
        //lazy
        var person = InterviewCandidate()
        print("person.checkGretting = \(person.checkGretting)")
        let personCheck = person.isiOS ?? true
        if  personCheck {
            print("person.iOSResumeDescription \(person.iOSResumeDescription)")
        }else{
            print("androidResumeDescription \(person.androidResumeDescription)")
        }
        
        
        //unowned self
        let objInter = InterviewTest.init(name: "happy singh")
        print("greeting = \(objInter.greeting)")
        
        
        //StepCounter
        let objStepCounter = StepCounter()
        objStepCounter.totalSteps = 1
        objStepCounter.totalSteps = 2
        
        per?.name = "adi"
        
        
        //TYPE PROPERTIES
        print("letStoredTypeProperty = \(SomeStructure.letStoredTypeProperty)")
        print("varStoredTypeProperty 1 = \(SomeStructure.varStoredTypeProperty)")
        SomeStructure.varStoredTypeProperty = "new one"
        print("varStoredTypeProperty 2 = \(SomeStructure.varStoredTypeProperty)")
    }
}
