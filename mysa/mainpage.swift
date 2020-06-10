//
//  mainpage.swift
//  mysa
//
//  Created by Vyom Unadkat on 18/12/17.
//  Copyright © 2017 Vyom Unadkat. All rights reserved.
//

import UIKit
//import Alamofire

class mainpage: UIViewController, UITextFieldDelegate {

    var jsondata = Dictionary<String,Any>()
    var data1 = Dictionary<String, Any>()
   
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "userboard"{
            var secondviewcontroller = segue.destination as! userboard
            secondviewcontroller.jsondata = data1
            secondviewcontroller.userdetails = jsondata
            
        }
        if segue.identifier == "friendsscoreboard"{
            var secondviewcontroller = segue.destination as! friendsscoreboard
            //secondviewcontroller.jsondata = data1
            secondviewcontroller.userdetails = jsondata
            
        }
        if segue.identifier == "qrcode"{
            var secondviewcontroller = segue.destination as! qrcode
            //secondviewcontroller.jsondata = data1
            secondviewcontroller.userdetails = jsondata
            
        }
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        var secondviewcontroller = segue.destination as! otpview
//        secondviewcontroller.email2 = self.email1.text!
//        secondviewcontroller.mobile2 = self.phoneno.text!
//    }
    
    
    @IBOutlet weak var scrollview: UIScrollView!
    
    override func viewDidLoad() {
        
        
        
            super.viewDidLoad()
            self.hideKeyboardWhenTappedAround()
        
        
        scrollview.contentSize.height = 695
        
        print("inmainpage")
        print("sdfkdfks\(jsondata)")
        
    }
    
    
    
    @IBAction func viewmysascore(_ sender: Any) {
        
        var data1: Dictionary<String, Any>!
        var id = jsondata["uid"] as! String
        print(id)
        
        let parameters: Parameters = [
            "uid": id
            ]
        
        let url = NSURL(string: "https://mysascore.com:8443/Mysa2.0/getScores")
        let request = NSMutableURLRequest(url: url! as URL)
        
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")  // the request is JSON
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Accept")
        
        //                request.setValue("application/json", forHTTPHeaderField: "Content-Type")  // the request is JSON
        //                request.setValue("application/json", forHTTPHeaderField: "Accept")
        
        
        Alamofire.request("https://mysascore.com:8443/Mysa2.0/getScores", method: .post, parameters: parameters, encoding: URLEncoding.httpBody).responseJSON { response in
            
            if let data = response.data {
                let json = String(data: data, encoding: String.Encoding.utf8)
                print("Response: \(String(describing: json))")
                print(json)
                let string = json
                var data = string?.data(using: .utf8)!
                do {
                    if let jsonArray = try JSONSerialization.jsonObject(with: data!, options : .allowFragments) as? Dictionary<String,Any>
                    {
                        print("dfdcdcdcdcdcdcdcdcddc")
                        print(jsonArray)
                        //print(jsonArray["email"]) is nil as jsonarr has no email
                        self.data1 = jsonArray
                        data1 = jsonArray
                        self.data1 = data1
                    } else {
                        print("bad json")
                    }
                } catch let error as NSError {
                    print(error)
                }
                
            }
        }
       
        
        
        
        let when = DispatchTime.now() + 2 // change 2 to desired number of seconds
        DispatchQueue.main.asyncAfter(deadline: when) {
            // Your code with delay

            print(data1)
            
            
            
            self.performSegue(withIdentifier: "userboard", sender: self)
        }
        
            
        
        
     
        
    }
    
    @IBAction func friendsscoreboard(_ sender: Any) {
        
        var id = jsondata["uid"] as! String
        print(id)
        
        let parameters: Parameters = [
            "uid": id
        ]
        
        let url = NSURL(string: "https://mysascore.com:8443/Mysa2.0/getScores")
        let request = NSMutableURLRequest(url: url! as URL)
        
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")  // the request is JSON
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Accept")
        
        //                request.setValue("application/json", forHTTPHeaderField: "Content-Type")  // the request is JSON
        //                request.setValue("application/json", forHTTPHeaderField: "Accept")
        
        
        Alamofire.request("https://mysascore.com:8443/Mysa2.0/getScores", method: .post, parameters: parameters, encoding: URLEncoding.httpBody).responseJSON { response in
            
            if let data = response.data {
                let json = String(data: data, encoding: String.Encoding.utf8)
                print("Response: \(String(describing: json))")
                print(json)
            }
        }
        
        
        
        
        
        //
        //
        //9951154522
        
        
        performSegue(withIdentifier: "friendsscoreboard", sender: self)
    }
    
    
    @IBAction func report(_ sender: Any) {
        
        performSegue(withIdentifier: "report", sender: nil)
        
        
        var id = jsondata["uid"] as! String
        print(id)
        
        let parameters: Parameters = [
            "uid": id
        ]
        
        let url = NSURL(string: "https://mysascore.com:8443/Mysa2.0/getScores")
        let request = NSMutableURLRequest(url: url! as URL)
        
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")  // the request is JSON
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Accept")
        
        //                request.setValue("application/json", forHTTPHeaderField: "Content-Type")  // the request is JSON
        //                request.setValue("application/json", forHTTPHeaderField: "Accept")
        
        
        Alamofire.request("https://mysascore.com:8443/Mysa2.0/getScores", method: .post, parameters: parameters, encoding: URLEncoding.httpBody).responseJSON { response in
            
            if let data = response.data {
                let json = String(data: data, encoding: String.Encoding.utf8)
                print("Response: \(String(describing: json))")
                print(json)
            }
        }
        
        
        
        
        
        
    }
    
    @IBAction func qrcode(_ sender: Any) {
        performSegue(withIdentifier: "qrcode", sender: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
            super.viewDidAppear(true)
            
        let isuserloggedin = UserDefaults.standard.bool(forKey: "isuserloggedin")

        print(isuserloggedin)
        if(isuserloggedin == false)
        {
            self.performSegue(withIdentifier: "loginview", sender: self)

        }
        
    }

    @IBAction func logoutclicked(_ sender: Any) {
        
//        UserDefaults.standard.set(false, forKey: "isuserloggedin")
//        UserDefaults.standard.synchronize()
//
//
//
//          self.performSegue(withIdentifier: "loginview", sender: self)
//          UserDefaults.standard.synchronize()
        
        
        
        UserDefaults.standard.set(false, forKey: "isuserloggedin")
        UserDefaults.standard.synchronize()
        
        let loginviewcontroller = self.storyboard!.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        let appdelegate = UIApplication.shared.delegate as! AppDelegate
        appdelegate.window?.rootViewController = loginviewcontroller
        appdelegate.window?.makeKeyAndVisible()
    }
    
    

}
