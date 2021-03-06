//
//  ViewController.swift
//  Postcard
//
//  Created by Serg on 2/17/15.
//  Copyright (c) 2015 sdbwebsolutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    @IBOutlet weak var messageNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMessageButtonPressed(sender: UIButton) {
        
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.greenColor()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        messageNameLabel.hidden = false
        messageNameLabel.text = enterNameTextField.text
        messageNameLabel.textColor = UIColor.redColor()
        
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        
    }
    
    
}

