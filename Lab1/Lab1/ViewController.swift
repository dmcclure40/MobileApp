//
//  ViewController.swift
//  Lab1
//
//  Created by Davis Mcclure on 9/7/16.
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

    @IBOutlet weak var artImage: UIImageView!
    
    
    @IBAction func imageSelect(sender: UIButton) {
        if sender.currentTitle=="Raid"{
            artImage.image=UIImage(named: "raid.jpg")
        }
        else if sender.currentTitle=="Enemy"{
            artImage.image=UIImage(named: "enemy.jpg")
        }
        else if sender.currentTitle=="Archon Forge"{
            artImage.image=UIImage(named: "archons forge.jpg")
        }
    }

    @IBOutlet weak var imageTitle: UILabel!
    
    @IBAction func selectTitle(sender: UIButton) {
        if sender.currentTitle=="Raid"{
            imageTitle.text="Wrath of the Machine"
        }
        else if sender.currentTitle=="Enemy"{
            imageTitle.text="Devil Splicers"
        }
        else if sender.currentTitle=="Archon Forge"{
            imageTitle.text="Archon's Forge"
        }
    }
    
    
    @IBOutlet weak var details: UILabel!
    
    @IBAction func selectDetails(sender: UIButton) {
        if sender.currentTitle=="Raid"{
            details.text="Wrath of the Machine"
        }
        else if sender.currentTitle=="Enemy"{
            details.text="Devil Splicers"
        }
        else if sender.currentTitle=="Archon Forge"{
            details.text="Archon's Forge"
        }
    }   
    
}

