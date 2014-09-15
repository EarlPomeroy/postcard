//
//  ViewController.swift
//  Postcard
//
//  Created by Earl Pomeroy on 9/14/14.
//  Copyright (c) 2014 Earl Pomeroy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var enterNameField: UITextField!
    
    @IBOutlet weak var enterMessageField: UITextField!
    
    @IBOutlet weak var messageButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func messageButtonPressed(sender: UIButton) {
        if (!enterNameField.text.isEmpty && !enterMessageField.text.isEmpty) {
            messageLabel.hidden = false
            messageLabel.text = enterMessageField.text
            messageLabel.textColor = UIColor.redColor()
            
            nameLabel.hidden = false
            nameLabel.text = "To: " + enterNameField.text
            nameLabel.textColor = UIColor.blueColor()
            
            enterNameField.text = nil
            enterNameField.resignFirstResponder()
            
            enterMessageField.text = nil
            enterMessageField.resignFirstResponder()
            
            messageButton.setTitle("Message Sent", forState: UIControlState.Normal)
        }
    }
}

