//
//  FibonacciSequence.swift
//  FibonacciApp
//
//  Created by Neil Hurley on 2/3/15.
//  Copyright (c) 2015 Neil Hurley. All rights reserved.
//

import Foundation

import UIKit

class FibonacciSequence {
    
    let includesZero: Bool
    let values: [UInt]
    
    
    init(maxNumber: UInt, includesZero: Bool) {
        self.includesZero = includesZero
        
        var valueArray: [UInt]
        
        if self.includesZero {
            valueArray = [0]
        }
        else  {
            valueArray = [1]
        }
        
        var nextCounter:UInt = 2
        for var counter:UInt = 0; nextCounter <= maxNumber; ++counter  {
            if (counter == 0) {
                //do nothing
            }
            else if (counter == 1) {
                //populate array here for 1
                valueArray.append(counter)
            }
            else {
                //populate array here for numbers other than 0 or 1
                //need to grab the array index n-1 + n-2
                valueArray.append(nextCounter)
                nextCounter = valueArray[counter-1]+valueArray[counter-2]
                
            }
        }
        
        values = valueArray
        println("\(values) are the Fibonacci numbers below \(maxNumber)")
        
    }
    

    
    init(numberOfItemsInSequence: UInt, includesZero: Bool) {
        self.includesZero = includesZero
        
        var valueArray: [UInt]
        
        
        if self.includesZero {
            valueArray = [0]
        }
        else  {
            valueArray = [1]
        }
        
        
        for counter in 0...numberOfItemsInSequence - 1 {
            if (counter == 0) {
                //do nothing
            }
            else if (counter == 1) {
                //populate array here for 1
                valueArray.append(counter)
            }
            else {
                //populate array here for numbers other than 0 or 1
                //need to grab the array index n-1 + n-2
                valueArray.append(valueArray[counter-1]+valueArray[counter-2])
            }
        }
        
        
        values = valueArray
        println("\(values) are \(numberOfItemsInSequence) characters of Fibonacci")
        
    }
    
}





