//
//  ContactInput.swift
//  Contacts
//
//  Created by Livvie Lin on 1/30/15.
//  Copyright (c) 2015 Livvie Lin. All rights reserved.
//

import UIKit

class ContactInput: UIViewController {
    
    // Properties
    var name = ""
    var phoneNumber = ""
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var phoneField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
