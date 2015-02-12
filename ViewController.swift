//
//  ViewController.swift
//  FibonacciApp
//
//  Created by Neil Hurley on 2/3/15.
//  Copyright (c) 2015 Neil Hurley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: 7, includesZero: true)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.updateFibonacciSequence()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet var textView: UITextView!
    @IBOutlet var includesZeroSwitch: UISwitch!
    @IBOutlet var includesZeroLabel: UILabel!
    @IBOutlet var numberOfItemsLabel: UILabel!
    @IBOutlet var numberOfItemsSlider: UISlider!
    

    @IBAction func updateFibonacciSequence() {
        if includesZeroSwitch.on {
            numberOfItemsSlider.maximumValue = 48
        } else {
            numberOfItemsSlider.maximumValue = 47
        }
        fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: UInt(numberOfItemsSlider.value), includesZero: includesZeroSwitch.on)
            textView.text = fibonacciSequence.values.description
            if includesZeroSwitch.on {
                includesZeroLabel.text = "Yes"
            }
            else {
                includesZeroLabel.text = "No"
            }
            numberOfItemsLabel.text = String(UInt(numberOfItemsSlider.value))
    }
        
        
    

    
}

