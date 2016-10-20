//
//  ViewController.swift
//  gestures
//
//  Created by Davis Mcclure on 10/6/16.
//  Copyright © 2016 Epic Octopus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func handlePan(sender: UIPanGestureRecognizer) {
        let translation = sender.translationInView(view)
        sender.view!.center = CGPoint(x: sender.view!.center.x + translation.x, y: sender.view!.center.y + translation.y)
        sender.setTranslation(CGPointZero, inView: view)
    }
    
    @IBAction func handleZoom(sender: UIPinchGestureRecognizer) {
    sender.view!.transform = CGAffineTransformScale(sender.view!.transform, sender.scale, sender.scale)
        sender.scale=1 //reset scale
    }
    
    @IBAction func handleRotate(sender: UIRotationGestureRecognizer) {
    sender.view!.transform = CGAffineTransformRotate(sender.view!.transform,sender.rotation)
        sender.rotation=0
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

