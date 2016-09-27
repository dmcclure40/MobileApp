//
//  ViewController.swift
//  lab3
//
//  Created by Wendy McClure on 9/26/16.
//  Copyright © 2016 Epic Octopus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var bar1: UITextField!
    @IBOutlet weak var bar2: UITextField!
    @IBOutlet weak var bar3: UITextField!
    @IBOutlet weak var bar4: UITextField!
    @IBOutlet weak var totalSpent: UILabel!
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func updateTipTotals() {
        var amount1:Float //bar1 amount
        var amount2:Float //bar2 amount
        var amount3:Float //bar3 amount
        var amount4:Float //bar4 amount
        
        if bar1.text!.isEmpty {
            amount1 = 0.0
        } else {
            amount1 = Float(bar1.text!)!
        }
        if bar2.text!.isEmpty {
            amount2 = 0.0
        } else {
            amount2 = Float(bar2.text!)!
        }
        if bar3.text!.isEmpty {
            amount3 = 0.0
        } else {
            amount3 = Float(bar3.text!)!
        }
        if bar4.text!.isEmpty {
            amount4 = 0.0
        } else {
            amount4 = Float(bar4.text!)!
        }
        let total = amount1 + amount2 + amount3 + amount4
        
        //format results as currency
        let currencyFormatter = NSNumberFormatter()
        currencyFormatter.numberStyle=NSNumberFormatterStyle.CurrencyStyle //set the number style
        totalSpent.text=currencyFormatter.stringFromNumber(total)
        
        }
    func textFieldDidEndEditing(textField: UITextField) {
        updateTipTotals()
    }
}


