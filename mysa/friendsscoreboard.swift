//
//  friendsscoreboard.swift
//  mysa
//
//  Created by Vyom Unadkat on 22/12/17.
//  Copyright © 2017 Vyom Unadkat. All rights reserved.
//

import UIKit
import Alamofire

class friendsscoreboard: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var firstname: UITextField!
    @IBOutlet weak var lastname: UITextField!
    @IBOutlet weak var mobileno: UITextField!
    var userdetails = Dictionary<String,Any>()
    var data1 = [Dictionary<String,Any>]()


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "fscoreboard"{
            var secondviewcontroller = segue.destination as! fscoreboard
            secondviewcontroller.jsondata = data1
        }
        
    }
    
    
    
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        
        self.firstname.delegate = self
        self.lastname.delegate = self
        self.mobileno.delegate = self
        
        super.viewDidLoad()
        
        print("djcnjkdsnkzkjnvl\(userdetails)")
        self.hideKeyboardWhenTappedAround()
        
        
        // Do any additional setup after loading the view.
    }
    
    func convertToDictionary(text: String) -> Any? {
        
        if let data = text.data(using: .utf8) {
            do {
                return try JSONSerialization.jsonObject(with: data, options: []) as? Any
            } catch {
                print(error.localizedDescription)
            }
        }
        
        return nil
        
    }
    
    
    
    
    @IBAction func buttonclicked(_ sender: Any) {
        if (firstname.text == "" || lastname.text == "" || mobileno.text == "") {
            var myalert = UIAlertController(title: "Alert", message: "Please enter all the details", preferredStyle: UIAlertControllerStyle.alert)
            let okaction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
            
            myalert.addAction(okaction)
            
            self.present(myalert, animated: true, completion:nil)
        }else{
        var fname = self.firstname.text as! String
        var lname = self.lastname.text as! String
        var mobile = self.mobileno.text as! String
            var data1 = [Dictionary<String,Any>]()
            
        let parameters = [
            "sfirstname": fname,
            "slastname" : lname,
            "smobile" : mobile
            ]
        let url = NSURL(string: "https://mysascore.com:8443/Mysa2.0/searchUser")
        let request = NSMutableURLRequest(url: url! as URL)
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Accept")
        
        Alamofire.request("https://mysascore.com:8443/Mysa2.0/searchUser", method: .post, parameters: parameters, encoding: URLEncoding.httpBody).responseJSON { response in
            
            if let data = response.data {
                let json = String(data: data, encoding: String.Encoding.utf8)
                print("Response: \(String(describing: json))")
                print(json)
                let string1 = json
                json?.replacingOccurrences(of: "\\", with: "")
                //string1.stringByReplacingOccurrencesOfString("\\", withString: "")
                print(json)
                if json == "[ ]"
                {
                    var myalert = UIAlertController(title: "Alert", message: "Enter valid details", preferredStyle: UIAlertControllerStyle.alert)
                    let okaction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
                    
                    myalert.addAction(okaction)
                    
                    self.present(myalert, animated: true, completion:nil)
                }else{
                if let list = self.convertToDictionary(text: json!) as? [Dictionary<String,Any>] {
                    
                    print(list)
                    data1 = list
                    self.data1 = data1
                    print(data1[0]["mysaScore"])
                    
                    
                    let when = DispatchTime.now() + 2 // change 2 to desired number of seconds
                    DispatchQueue.main.asyncAfter(deadline: when) {
                        // Your code with delay
                        
                        print(data1)
                        
                        
                        
                        self.performSegue(withIdentifier: "fscoreboard", sender: self)
                    }
                    
                    
                    
                    }
                }
            }
            }
            
}
        
        
    
    
    
    
    

    

   
    }
}
