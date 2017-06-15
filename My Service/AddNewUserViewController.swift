//
//  AddNewUserViewController.swift
//  My Service
//
//  Created by Student12 on 6/15/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//

import UIKit

class AddNewUserViewController: UIViewController {

    // Implicit
    var nameString:  String? = nil
    var userString: String? = nil
    var passwordString: String? = nil
    
    
    
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    @IBAction func saveButton(_ sender: Any) {
        
        // Get value From TextField
        nameString = nameTextField.text
        userString = userTextField.text
        passwordString = passwordTextField.text
        
        
        // check Space
        let intName = nameString?.characters.count
        let intUser = userString?.characters.count
        let intPassword = passwordString?.characters.count
        
        if (intName == 0) || (intUser == 0) || (intPassword == 0) {
            
            //Have Space
            print("Have Space")
        } else {
            print("No Space")
            
        
        
        
        }
        
        

        
    }// saveBotton
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("This ia AddNerUser")
  
        
        
        
    } // Main Method

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    } //didRective
    


} //main Class
