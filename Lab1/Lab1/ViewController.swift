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
            artImage.image=UIImage(named: "raid.jpg" )
        }
        else if sender.currentTitle=="Enemy"{
            artImage.image=UIImage(named: "enemy.png")
        }
        else if sender.currentTitle=="Arena"{
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
        else if sender.currentTitle=="Arena"{
            imageTitle.text="Archon's Forge"
        }
    }
    
    
    @IBOutlet weak var details: UILabel!
    
    @IBAction func selectDetails(sender: UIButton) {
        if sender.currentTitle=="Raid"{
            details.text="The new raid will feature the Devil Splicers a new variant of the fallen enemy faction. This is the first raid featuring the fallen enemies. This raid will begain in a social area called the plaugelands. Unlike previous raids, there is a fair bit of outdoor action in this, and you can see the area from other parts of the Plaguelands. The raid will release on September 23rd"
        }
        else if sender.currentTitle=="Enemy"{
            details.text="The House of Devels are a group of Fallen scavengers that has come across a nanotechnology called SIVA. This technology was designed to 'Defend and Protect' and has a very aggressive, and militaristic nature to it. The Devils have augmented themselves and their wepons with this nano-tech to beceome more deadly and aggressive. Now that the Devil Splicers have be created this group of Fallen will be faster and more leathal then ever before."
        }
        else if sender.currentTitle=="Arena"{
            details.text="The Archon's Forge is a new arena mode set inside of the plauglands. Players can enter and be challeneged with waves of enemies in varying difficulty. Each encounter lasts about 5 minutes long and is a combination of Prison of Elders and the Court of Oryx areans. Players can join at any time, however if you die in the arena you are sent into the 'stands' to watch the rest of the battle."
        }
    }   
    
}

