//
//  ViewController.swift
//  lab4
//
//  Created by Davis McClure on 10/5/16.
//  Copyright © 2016 Epic Octopus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var actorLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    
    var user=Favorite()
    
    @IBAction func unwindSegue (segue:UIStoryboardSegue){
        movieLabel.text=user.favMovie
        actorLabel.text=user.favActor
        genreLabel.text=user.favGenre
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

