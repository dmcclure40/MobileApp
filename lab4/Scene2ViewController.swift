//
//  Scene2ViewController.swift
//  lab4
//
//  Created by Wendy McClure on 10/5/16.
//  Copyright © 2016 Epic Octopus. All rights reserved.
//

import UIKit

class Scene2ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var userMovie: UITextField!
    @IBOutlet weak var userActor: UITextField!
    @IBOutlet weak var userGenre: UITextField!
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "doneFavs"{
            let scene1ViewController = segue.destinationViewController as! ViewController
            //check to see that text was entered in the textfields
            if userMovie.text!.isEmpty == false{
                scene1ViewController.user.favMovie=userMovie.text
            }
            if userActor.text!.isEmpty == false{
                scene1ViewController.user.favActor=userActor.text
            }
            if userGenre.text!.isEmpty == false{
                scene1ViewController.user.favGenre=userGenre.text
            }
        }
    }
    
    override func viewDidLoad() {
        userMovie.delegate=self
        userActor.delegate=self
        userGenre.delegate=self
        super.viewDidLoad()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
