//
//  Models.swift
//  Properties
//
//  Created by Rakhi on 11/01/19.
//  Copyright © 2019 myself. All rights reserved.
//

import Foundation

struct FixedLengthRangeStruct {
    var sFValue : Int
    let sLength : Int
}


struct Person {
    var name: String
    var age: Int
}


struct InterviewCandidate {
    var isiOS:Bool?
    var name:String = "Adi singh"
    
    lazy var iOSResumeDescription: String = {
        return "I am an iOS developer"
    }()
    
    // You can reference variables regardless of whether or not you use a closure.
    lazy var androidResumeDescription = "I am an android developer"
    
    lazy var checkGretting: String = {
        return "Hello \(self.name)"
    }()
}



class StepCounter {
    var totalSteps = 0 {
        willSet {
            print("totalSteps willSet newValue \(newValue) & totalSteps \(totalSteps)")
        }
        
        didSet {
            print("totalSteps didSet oldValue \(oldValue) & totalSteps \(totalSteps)")
        }
    }
}


class FixedLengthRangeClass {
    var cFValue : Int = 2
    let cLength : Int = 3
}


class InterviewTest {
    var name : String
    
    lazy var greeting : String = { [unowned self] in
        return "Hello \(self.name)"
        }()
    
    init(name: String) {
        self.name = name
    }
}



struct SomeStructure {
    static var varStoredTypeProperty = "var some stored proerty"
    static let letStoredTypeProperty = "let some stored proerty"
}





