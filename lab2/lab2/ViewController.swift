//
//  ViewController.swift
//  lab2
//
//  Created by Wendy McClure on 9/19/16.
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

    @IBOutlet weak var changeImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var pickClass: UISegmentedControl!
    @IBOutlet weak var capitalSwitch: UISwitch!
    @IBOutlet weak var fontSizeLabel: UILabel!
    
    
    func updateImage(){
        if pickClass.selectedSegmentIndex == 0 {
            titleLabel.text="Warlock"
            changeImage.image=UIImage(named: "warlock.png")
        }
        else if pickClass.selectedSegmentIndex == 1 {
            titleLabel.text="Hunter"
            changeImage.image=UIImage(named: "hunter.jpeg")
        }
        else if pickClass.selectedSegmentIndex == 2 {
            titleLabel.text="Titan"
            changeImage.image=UIImage(named: "titan.jpeg")
        }
    }
    
    @IBAction func changeInfo(sender: UISegmentedControl) {
        updateImage()
        updateCaps()
    }
    
    func updateCaps(){
        if capitalSwitch.on {
            titleLabel.text=titleLabel.text?.uppercaseString
            titleLabel.textColor = UIColor.purpleColor()
        } else {
            titleLabel.text=titleLabel.text?.lowercaseString
            titleLabel.textColor = UIColor.blackColor()
        }
    }
    
    @IBAction func updateFont(sender: UISwitch) {
        updateCaps()
    }
    
    
    
    @IBAction func changeFontSize(sender: UISlider) {
        let fontSize=sender.value //float
        fontSizeLabel.text=String(format: "%.0f", fontSize) //convert float to String
        let fontSizeCGFloat=CGFloat(fontSize) //convert float to CGFloat
        titleLabel.font=UIFont.systemFontOfSize(fontSizeCGFloat) //create a UIFont object and assign to the font property
    }

}

