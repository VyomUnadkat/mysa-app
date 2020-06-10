//
//  ViewController.swift
//  mysa
//
//  Created by Vyom Unadkat on 27/10/17.
//  Copyright © 2017 Vyom Unadkat. All rights reserved.
//

import UIKit
import Alamofire


class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var Username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    var data1: Dictionary<String,Any> = ["":""]
    
   override func viewDidLoad() {
        super.viewDidLoad()
    self.Username.delegate = self
    self.password.delegate = self
    
    
    
        self.hideKeyboardWhenTappedAround()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    
    @IBAction func loginClicked(_ sender: Any) {
        
        var username = self.Username.text
        var pass = self.password.text
        
        let parameters =
            ["username": username!,
             "pwd": pass!]
        
   
        let url = NSURL(string: "https://mysascore.com:8443/Mysa2.0/login")
        let request = NSMutableURLRequest(url: url! as URL)
        
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Accept")
        
        Alamofire.request("https://mysascore.com:8443/Mysa2.0/login", method: .post, parameters: parameters, encoding: URLEncoding.httpBody).responseJSON { response in
            
            if let data = response.data {
                let json = String(data: data, encoding: String.Encoding.utf8)
                print("Response: \(String(describing: json))")
                //print(json)
                
                let string = json
                var data = string?.data(using: .utf8)!
                do {
                    if let jsonArray = try JSONSerialization.jsonObject(with: data!, options : .allowFragments) as? Dictionary<String,Any>
                    {
                        print(jsonArray)
                        print(jsonArray["email"])
                        self.data1 = jsonArray
                    } else {
                        print("bad json")
                    }
                } catch let error as NSError {
                    print(error)
                }
                
                if json == "{ }"{
                    print(Error.self)
                    
                    var myalert = UIAlertController(title: "Alert", message: "Enter valid email and password", preferredStyle: UIAlertControllerStyle.alert)
                    let okaction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
                    
                    myalert.addAction(okaction)
                    
                    self.present(myalert, animated: true, completion:nil)
                    
                }else{
                    
                    UserDefaults.standard.set(true, forKey: "isuserloggedin")
                    UserDefaults.standard.synchronize()
                    
                
                    
                    let myviewcontroller: mainpage = self.storyboard!.instantiateViewController(withIdentifier: "mainpage") as! mainpage
                    myviewcontroller.jsondata = self.data1
                    
                    let appdelegate = UIApplication.shared.delegate as! AppDelegate
                    appdelegate.window?.rootViewController = myviewcontroller
                    appdelegate.window?.makeKeyAndVisible()
                }
            }
            
            
        }
    
        
    }
    
    
    

}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}


