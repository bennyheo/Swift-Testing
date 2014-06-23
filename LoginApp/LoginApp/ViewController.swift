//
//  ViewController.swift
//  LoginApp
//
//  Created by Benny Heo on 6/9/14.
//  Copyright (c) 2014 BennyMadeIt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var userName : UITextField
    @IBOutlet var userPass : UITextField
    
    @IBOutlet var label : UILabel
    @IBAction func loginButton(sender : AnyObject) {
        var user = "car"
        var password = "black"
        
        if userName.text == user  && userPass.text == password {
            label.text = "Login Accepted"
            userName.resignFirstResponder()
            userPass.resignFirstResponder()
        } else {
            label.text = "Incorrect username or password."
        }
        
    }
    
    @IBAction func cancelButton(sender : AnyObject) {
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

