//
//  ViewController.swift
//  workout
//
//  Created by Davis Mcclure on 10/13/16.
//  Copyright © 2016 Epic Octopus. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var workMins: UITextField!
    @IBOutlet weak var workType: UISegmentedControl!
    @IBOutlet weak var milesWorked: UILabel!
    @IBOutlet weak var calsBurned: UILabel!
    @IBOutlet weak var workImage: UIImageView!
    @IBOutlet weak var weeklyWork: UISwitch!
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func calcWork(sender: UIButton) {
        if workType.selectedSegmentIndex == 0{
            if weeklyWork.on{
                weeklyRun()
            } else{
        calcRun()
            }
        }
        else if workType.selectedSegmentIndex == 1{
            if weeklyWork.on{
            weeklySwim()
            }else{
                calcSwim()
            }
        }
        else if workType.selectedSegmentIndex == 2{
            if weeklyWork.on{
                weeklyBike()
            }else{
                calcBike()
            }
        }
    }
    
    func calcRun(){
        var minsWorked:Float //workout time
        let time:Float = 10.00
        let minmMins = Float(workMins.text!)
        
        if minmMins < 30 {
            //create a UIAlertController object
            let alert=UIAlertController(title: "Warning", message: "The amount of time must be greater than 30", preferredStyle: UIAlertControllerStyle.Alert)
            //create a UIAlertAction object for the button
            let cancelAction=UIAlertAction(title: "Cancel", style:UIAlertActionStyle.Cancel, handler: nil)
            alert.addAction(cancelAction) //adds the alert action to the alert object
            let okAction=UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: {action in
                self.workMins.text="30"
                
                
            })
            alert.addAction(okAction)
            presentViewController(alert, animated: true, completion: nil)
            minsWorked = 30.00
        } else {
            minsWorked = Float(workMins.text!)!
        }
        
        let miles:Float=minsWorked/time
        let cals=miles*100
        let nf = NSNumberFormatter()
        nf.numberStyle = .DecimalStyle
        milesWorked.text=nf.stringFromNumber(miles)
        calsBurned.text=nf.stringFromNumber(cals)
    }
    
    func weeklyRun(){
        var minsWorked:Float //workout time
        let time:Float = 10.00
        let minmMins = Float(workMins.text!)
        
        if minmMins < 30 {
            //create a UIAlertController object
            let alert=UIAlertController(title: "Warning", message: "The amount of time must be greater than 30", preferredStyle: UIAlertControllerStyle.Alert)
            //create a UIAlertAction object for the button
            let cancelAction=UIAlertAction(title: "Cancel", style:UIAlertActionStyle.Cancel, handler: nil)
            alert.addAction(cancelAction) //adds the alert action to the alert object
            let okAction=UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: {action in
                self.workMins.text="30"
                
                
            })
            alert.addAction(okAction)
            presentViewController(alert, animated: true, completion: nil)
            minsWorked = 30.00
        } else {
            minsWorked = Float(workMins.text!)!
        }
        
        let miles:Float=(minsWorked/time)*5
        let cals=(miles*100)*5
        let nf = NSNumberFormatter()
        nf.numberStyle = .DecimalStyle
        milesWorked.text=nf.stringFromNumber(miles)
        calsBurned.text=nf.stringFromNumber(cals)
    }
    
    func calcSwim(){
        var minsWorked:Float //workout time
        let time:Float = 30.00
        let minmMins = Float(workMins.text!)
        
        if minmMins < 30 {
            //create a UIAlertController object
            let alert=UIAlertController(title: "Warning", message: "The amount of time must be greater than 30", preferredStyle: UIAlertControllerStyle.Alert)
            //create a UIAlertAction object for the button
            let cancelAction=UIAlertAction(title: "Cancel", style:UIAlertActionStyle.Cancel, handler: nil)
            alert.addAction(cancelAction) //adds the alert action to the alert object
            let okAction=UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: {action in
                self.workMins.text="30"
                
                
            })
            alert.addAction(okAction)
            presentViewController(alert, animated: true, completion: nil)
            minsWorked = 30.00
        } else {
            minsWorked = Float(workMins.text!)!
        }
        
        let miles:Float=minsWorked/time
        let cals=miles*210
        let nf = NSNumberFormatter()
        milesWorked.text=nf.stringFromNumber(miles)
        calsBurned.text=nf.stringFromNumber(cals)
    }
    
    func weeklySwim(){
        var minsWorked:Float //workout time
        let time:Float = 30.00
        let minmMins = Float(workMins.text!)
        
        if minmMins < 30 {
            //create a UIAlertController object
            let alert=UIAlertController(title: "Warning", message: "The amount of time must be greater than 30", preferredStyle: UIAlertControllerStyle.Alert)
            //create a UIAlertAction object for the button
            let cancelAction=UIAlertAction(title: "Cancel", style:UIAlertActionStyle.Cancel, handler: nil)
            alert.addAction(cancelAction) //adds the alert action to the alert object
            let okAction=UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: {action in
                self.workMins.text="30"
                
                
            })
            alert.addAction(okAction)
            presentViewController(alert, animated: true, completion: nil)
            minsWorked = 30.00
        } else {
            minsWorked = Float(workMins.text!)!
        }
        
        let miles:Float=(minsWorked/time)*5
        let cals=(miles*210)*5
        let nf = NSNumberFormatter()
        milesWorked.text=nf.stringFromNumber(miles)
        calsBurned.text=nf.stringFromNumber(cals)
    }
    
    func calcBike(){
        var minsWorked:Float //workout time
        let time:Float = 4.00
        let minmMins = Float(workMins.text!)
        
        if minmMins < 30 {
            //create a UIAlertController object
            let alert=UIAlertController(title: "Warning", message: "The amount of time must be greater than 30", preferredStyle: UIAlertControllerStyle.Alert)
            //create a UIAlertAction object for the button
            let cancelAction=UIAlertAction(title: "Cancel", style:UIAlertActionStyle.Cancel, handler: nil)
            alert.addAction(cancelAction) //adds the alert action to the alert object
            let okAction=UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: {action in
                self.workMins.text="30"
                
                
            })
            alert.addAction(okAction)
            presentViewController(alert, animated: true, completion: nil)
            minsWorked = 30.00        } else {
            minsWorked = Float(workMins.text!)!
        }
        
        let miles:Float=minsWorked/time
        let cals=miles*34
        let nf = NSNumberFormatter()
        milesWorked.text=nf.stringFromNumber(miles)
        calsBurned.text=nf.stringFromNumber(cals)
    }
    
    func weeklyBike(){
        var minsWorked:Float //workout time
        let time:Float = 4.00
        let minmMins = Float(workMins.text!)
        
        if minmMins < 30 {
            //create a UIAlertController object
            let alert=UIAlertController(title: "Warning", message: "The amount of time must be greater than 30", preferredStyle: UIAlertControllerStyle.Alert)
            //create a UIAlertAction object for the button
            let cancelAction=UIAlertAction(title: "Cancel", style:UIAlertActionStyle.Cancel, handler: nil)
            alert.addAction(cancelAction) //adds the alert action to the alert object
            let okAction=UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: {action in
                self.workMins.text="30"
                
                
            })
            alert.addAction(okAction)
            presentViewController(alert, animated: true, completion: nil)
            minsWorked = 30.00
        } else {
            minsWorked = Float(workMins.text!)!
        }
        
        let miles:Float=(minsWorked/time)*5
        let cals=(miles*34)*5
        let nf = NSNumberFormatter()
        milesWorked.text=nf.stringFromNumber(miles)
        calsBurned.text=nf.stringFromNumber(cals)
    }
    
    func updateImage(){
        if workType.selectedSegmentIndex == 0 {
            workImage.image=UIImage(named: "Run.png")
        }
        else if workType.selectedSegmentIndex == 1 {
            workImage.image=UIImage(named: "Swim.png")
        }
        else if workType.selectedSegmentIndex == 2 {
            workImage.image=UIImage(named: "Bike.png")
        }
    }
    
    @IBAction func pickWorkout(sender: UISegmentedControl) {
        updateImage()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        workMins.delegate=self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

