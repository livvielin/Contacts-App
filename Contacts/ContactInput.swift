//
//  ContactInput.swift
//  Contacts
//
//  Created by Livvie Lin on 1/30/15.
//  Copyright (c) 2015 Livvie Lin. All rights reserved.
//

import UIKit

protocol ContactInputDelegate {
    func didUpdateContact(senderClass: AnyObject, aName: String, aPhoneNumber: String)
}

class ContactInput: UIViewController, UITextFieldDelegate {
    
    // Properties
    var name = ""
    var phoneNumber = ""
    var delegate: ContactInputDelegate?
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var phoneField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nameField.delegate = self
        phoneField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: UITextFieldDelegateFunctions
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        if textField.tag == 1 {
            name = textField.text
        }
        else {
            phoneNumber = textField.text
        }
        println("Name: \(name), Phone: \(phoneNumber)")
        
        return true
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        if name != "" && phoneNumber != "" {
            delegate!.didUpdateContact(self, aName: name, aPhoneNumber: phoneNumber)
        }
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation

}
