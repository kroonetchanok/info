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
    
    
    @IBOutlet weak var AlertLabel: UILabel!
    
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
            AlertLabel.alpha = 1
            
        } else {
            
            
            print("No Space")
            AlertLabel.alpha = 0
            let strMyURL = "http://androidthai.in.th/snru/addUserMaster.php?isAdd=true&Name=" + nameString! + "&User=" + userString! + "&Password=" + passwordString! + ""
            print("strMyURL ==> \(strMyURL)")
            uploadValueToServer(strURL: strMyURL)
            
        
        }
        

        
    }// saveBotton
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("This ia AddNerUser")
  
        
        
        
    } // Main Method
    func uploadValueToServer(strURL: String) -> Void {
        
        //Process Connected Http
        let urlPHP = strURL
        //Change String to url String
        let myURL = URL(string: urlPHP)
        
        let request1 = NSMutableURLRequest(url: myURL!)
        let task = URLSession.shared.dataTask(with: request1 as URLRequest){
            data, response, error in
            
            if error != nil {
                print("Error ==> \(error)")
            }   else {
                
                if let unwrappedData = data {
                    
                    let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                    let strJSON = dataString as Any
                    print("strJSON ==> \(strJSON)")
                    
                }
                
            }   // if1
            
        }
        task.resume()
        
        performSegue(withIdentifier: "BackHome", sender: self)
        
    
        
    } // uploadValur
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goHome" {
            
            if let desination = segue.destination as? ViewController {
          desination.myString = (sender as? String)!
            
            }
        }  // if
    
    
        }
        
        
        
        
    }
    
    
    
    
    

  //  override func didReceiveMemoryWarning() {
  //      super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
  //  } //didRective
    


//} //main Class
