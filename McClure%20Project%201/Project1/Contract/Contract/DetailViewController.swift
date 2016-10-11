//
//  DetailViewController.swift
//  Contract
//
//  Created by Wendy McClure on 10/10/16.
//  Copyright © 2016 Epic Octopus. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var date1: UITextField!
    @IBOutlet weak var date2: UITextField!
    @IBOutlet weak var date3: UITextField!
    @IBOutlet weak var date4: UITextField!
    @IBOutlet weak var date5: UITextField!
    @IBOutlet weak var date6: UITextField!
    @IBOutlet weak var date7: UITextField!
    @IBOutlet weak var date8: UITextField!
    @IBOutlet weak var date9: UITextField!
    @IBOutlet weak var date10: UITextField!
    @IBOutlet weak var desc1: UITextField!
    @IBOutlet weak var desc2: UITextField!
    @IBOutlet weak var desc3: UITextField!
    @IBOutlet weak var desc4: UITextField!
    @IBOutlet weak var desc5: UITextField!
    @IBOutlet weak var desc6: UITextField!
    @IBOutlet weak var desc7: UITextField!
    @IBOutlet weak var desc8: UITextField!
    @IBOutlet weak var desc9: UITextField!
    @IBOutlet weak var desc10: UITextField!
    @IBOutlet weak var hour1: UITextField!
    @IBOutlet weak var hour2: UITextField!
    @IBOutlet weak var hour3: UITextField!
    @IBOutlet weak var hour4: UITextField!
    @IBOutlet weak var hour5: UITextField!
    @IBOutlet weak var hour6: UITextField!
    @IBOutlet weak var hour7: UITextField!
    @IBOutlet weak var hour8: UITextField!
    @IBOutlet weak var hour9: UITextField!
    @IBOutlet weak var hour10: UITextField!


    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.description
            }
        }
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    //attempt at saving data in a text field
    @IBAction func saveButtonClick(sender: UIButton) {
        let defaults = `NSUserDefaults`.standardUserDefaults()
        
        defaults.setObject(date1.text, forKey: "Date")
        defaults.setObject(desc1.text, forKey: "Description of Work")
        defaults.setObject(hour1.text, forKey: "Hours")
        defaults.synchronize()
        
        //print("d1=\(date1.text), ds1=\(desc1.text), h1=\(hour1.text)")
    }
    
    func loadDefaults() {
        let defaults = `NSUserDefaults`.standardUserDefaults()
        date1.text = defaults.objectForKey("Date") as? String
        desc1.text = defaults.objectForKey("Description of Work") as? String
        hour1.text = defaults.objectForKey("Hours") as? String
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        //date text fields
        date1.delegate=self
        date2.delegate=self
        date3.delegate=self
        date4.delegate=self
        date5.delegate=self
        date6.delegate=self
        date7.delegate=self
        date8.delegate=self
        date9.delegate=self
        date10.delegate=self
        //description text fields
        desc1.delegate=self
        desc2.delegate=self
        desc3.delegate=self
        desc4.delegate=self
        desc5.delegate=self
        desc6.delegate=self
        desc7.delegate=self
        desc8.delegate=self
        desc9.delegate=self
        desc10.delegate=self
        //hour text fields
        hour1.delegate=self
        hour2.delegate=self
        hour3.delegate=self
        hour4.delegate=self
        hour5.delegate=self
        hour6.delegate=self
        hour7.delegate=self
        hour8.delegate=self
        hour9.delegate=self
        hour10.delegate=self
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

