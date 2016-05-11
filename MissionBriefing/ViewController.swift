//
//  ViewController.swift
//  MissionBriefing
//
//  Created by Tom Williamson on 5/10/16.
//  Copyright © 2016 Tom Williamson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var agentNameText: UITextField!
    @IBOutlet weak var agentPasswordText: UITextField!
    @IBOutlet weak var authButton: UIButton!
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet var greetingTextView: UITextView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //self.agentNameText.text = ""
        self.greetingLabel.text = ""
        self.greetingTextView.text = ""

        
    }


    
    @IBAction func authAgentClicked(sender: AnyObject) {
        
        if self.agentNameText.isFirstResponder() {
            self.agentNameText.resignFirstResponder()
        }
        
        
        if (!self.agentNameText.text!.isEmpty && !self.agentPasswordText.text!.isEmpty) {
            
            let agentNames = self.agentNameText.text!.componentsSeparatedByString(" ")
            let agentLastName = agentNames[agentNames.count - 1]
            
            self.greetingLabel.text = "Good evening, Agent \(agentLastName)"
            
            let text = "This mission will be an arduous one, fraught with peril. You will cover much strange and unfamiliar territory. Should you choose to accept this mission, Agent \(agentLastName), you will certainly be disavowed, but you will be doing your country a great service. This message will self destruct in 5 seconds."
            
            self.greetingTextView.text = text
            
            let authenticatedBackgroundColor = UIColor(red:0.585, green:0.78, blue:0.188, alpha:1)
            self.view.backgroundColor = authenticatedBackgroundColor
        }
            
        else {
            
            let accessDeniedBackgroundColor = UIColor(red:0.78, green:0.188, blue:0.188, alpha:1)
            self.view.backgroundColor = accessDeniedBackgroundColor
            
            
        }
        
    }

}

