//
//  otpview.swift
//  mysa
//
//  Created by Vyom Unadkat on 27/12/17.
//  Copyright © 2017 Vyom Unadkat. All rights reserved.
//

import UIKit
import Alamofire

class otpview: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var otpentered: UITextField!
    
    
    var email2 : String!
    var mobile2 : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hideKeyboardWhenTappedAround()
        
        self.otpentered.delegate = self
        
        

        // Do any additional setup after loading the view.
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    @IBAction func resendclicked(_ sender: Any) {
        print(email2)
        print(mobile2)
        let parameter: Parameters = [
            "phonenumber": mobile2,
            "email": email2
            ]
        let url = NSURL(string: "https://mysascore.com:8443/Mysa2.0/sendotp.do")
        let request = NSMutableURLRequest(url: url! as URL)
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Accept")
        
        
        
        Alamofire.request("https://mysascore.com:8443/Mysa2.0/sendotp.do", method: .post, parameters: parameter, encoding: URLEncoding.httpBody).responseJSON { response in
            
            if let data = response.data {
                let json = String(data: data, encoding: String.Encoding.utf8)
                print("Response: \(String(describing: json))")
                
            }
        }
        
    }
    
    @IBAction func verifyclicked(_ sender: Any) {
        
        
        let parameter: Parameters = [
            "otp": otpentered.text!,
            "email": email2
        ]
        let url = NSURL(string: "https://mysascore.com:8443/Mysa2.0/authenticate.do")
        let request = NSMutableURLRequest(url: url! as URL)
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Accept")
        
        
        
        Alamofire.request("https://mysascore.com:8443/Mysa2.0/authenticate.do", method: .post, parameters: parameter, encoding: URLEncoding.httpBody).responseJSON { response in
            
            if let data = response.data {
                let json = String(data: data, encoding: String.Encoding.utf8)
                print("Response: \(String(describing: json))")
                
                
                if json == "success"{
                    self.performSegue(withIdentifier: "tologinpage", sender: self)
                }
                
                
                
            }
        }
        
        
        
        
    }
    

}
