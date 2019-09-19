//
//  ViewController.swift
//  Tip_Cal
//
//  Created by cs_apple_06 on 9/10/19.
//  Copyright © 2019 cs_apple_06. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tip_label: UILabel!
    
    @IBOutlet weak var Total_label: UILabel!
    
    @IBOutlet weak var Bill_Field: UITextField!
    
    @IBOutlet weak var tip_Control: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Tap_Gesture(_ sender: Any)
    {
    
        print ("Hello")
        
        view.endEditing(true)
    
    }
    
 
    

        @IBAction func calculate_tip(_ sender: Any) {
        
        //Get the bill amount
        let bill = Double(Bill_Field.text!) ?? 0
        
        //Calculate the tip and total
        let tipPrecentages = [0.1, 0.15, 0.2]
        
        let tip = bill * tipPrecentages[tip_Control.selectedSegmentIndex]
        
        let total = bill + tip
        
        tip_label.text = String(format: "$%.2f", tip)
       
        Total_label.text = String(format: "$%.2f", total)
       
        
    }
}

