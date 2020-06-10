//
//  signView.swift
//  mysa
//
//  Created by Vyom Unadkat on 29/10/17.
//  Copyright © 2017 Vyom Unadkat. All rights reserved.
//

import UIKit
//import FirebaseAuth
//import FirebaseDatabase
//import Firebase
//import Alamofire

class signView: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource, BEMCheckBoxDelegate, UITextFieldDelegate {
    @IBOutlet weak var checkbox: BEMCheckBox!
    var webData = NSArray()
    
    var data1: Dictionary<String,Any> = ["":""]

    var correct: Int = 0
    
    @IBAction func tnc(_ sender: Any) {
        
        var myalert = UIAlertController(title: "Terms & Conditions", message: """
            Our desire is to extend a gracious and inclusive welcome to all of you.Welcome to MySA®
            
            By downloading or accessing the Website to use the Services, you irrevocably accept all the conditions stipulated in this Agreement, the Subscription Terms of Service and Privacy Policy, as available on the Website, and agree to abide by them.This Agreement supersedes all previous oral and written terms and conditions (if any) communicated to you relating to your use of the Website to avail the Services.By availing any Service, you signify your acceptance of the terms of this Agreement.
            
            By using The Login Id And Password each time you are acknowledging that you have read these Terms And Conditions and are agreeing to them.If you do not accept these Terms And Conditions, you may not access or use this Website.
            
              
            
            READ OUR WEBSITE PRIVACY POLICY
            
         
            The Agreement is published in compliance of, and is governed by the provisions of Indian law, including but not limited to:
            
            the Indian Contract Act, 1872,
                                     
                                     the (Indian) Information Technology Act, 2000, and the rules, regulations, guidelines and clarifications framed there under, including the (Indian) Information Technology (Reasonable Security Practices and Procedures and Sensitive Personal Information) Rules, 2011 (the “SPI Rules”), and the (Indian) Information Technology (Intermediaries Guidelines) Rules, 2011 (the “IG Rules”).
            
            These terms and conditions (the “Terms”) govern your access to and use of MySA®. By accessing or using MySA®, you are agreeing to these Terms and entering into a legally binding contract with MySA®. It is important that you read carefully and understand the Terms. Do not access or use MySA® if you are unwilling or unable to be bound by the Terms.
            
            Any references to “you” and “your” refer to you, as a user of MySA®. References to “we”, “us” and “our” refer to MySA®
            
            1. DEFINITIONS AND INTERPRETATION
            
              
            
            In this Agreement the following terms shall have the following meanings:
            
            “Website” – means the website that you are currently using MySA® and any sub-domains of this site unless expressly excluded by their own terms and conditions.
            
            “Content” – means any text, graphics, images, audio, video, software, data compilations and any other form of information capable of being stored in a computer that appears on or forms part of this Website
            
            “Service” – means collectively any online facilities, tools, services or information that MySA® makes available through the Website either now or in the future.
            
            System” – means any online communications infrastructure that MySA® makes available through the it either now or in the future.
            
            User” / “Users” – means any third party that accesses the Website and is not employed by MySA® and acting in the course of their employment.
            
            2. OUR SERVICES
            
              
            
            We provide you with MySA® score with analysis and insights to help it all make sense.
            
            We are dedicated to helping our users gain more control over their financial well being by obtaining their MySA® score from and providing free access to them.
            
            We also use this information to provide our users with matched offers of third party credit products which are tailored to their profile and could help them save money.
            
            We reserve the right in our sole and absolute discretion to make changes to how we operate and provide our Services, including adding new services, modifying existing services, or suspending, discontinuing, or terminating your access to any or all portions of our Services.
            
            On your acceptance of these Terms and our acceptance of your application for our services, you engage us as a service provider to provide you with the following services:
            
            Obtain on a monthly basis on your behalf, as your authorized agent/representative and copies of your socialcredit score. Please note that all costs for the retrieval and presentation of the socialcredit score are paid for by us
            
            Hold on our systems and make this credit information available to you through our website. After you register for our service we will take you through an ID validation process to securely identify you as an individual with a credit report. Once your identity has been validated, we will then provide you with a copy of your socialcredit score.
            
            We use our analysis and experience to provide you with all sorts of content and context about the ins and outs of financial health—from educational articles to insights about your Credit Factors.
            
            By using our Services, your records and, where applicable, those of your financial associates will be searched. Searches are carried out as follows:
            
            As part of verifying your identity, we will do authentication by e-KYC and social profiles verification. This search will be carried out once at the time you register for our Services and we could ask you to re confirm the same as per change in any policy.
            
            3. ACCESS TO MySA®
            
              
            
            These Terms govern your access to and use MySA® and the information available on it, including information you provide and that we collect on your behalf and facilities and services offered through MySA®.
            
            You must be at least 18 years of age and a resident in the INDIA to use our MySA® and any services provided through it.
            
            You may access and use MySA® and our Services only for your personal use on your own behalf and not on behalf of anyone else. You must not engage another person, company, partnership or other entity to access MySA® or our Services on your behalf. You must not order, or attempt to order, credit information about anyone else through MySA®.
            
            You shall not use the Services or website in any manner that could damage, disable, overburden, block or impair any of the server connected to the website. You may not attempt to gain unauthorized access to the Services through hacking, password mining or any other means.
            
            You shall not use any "deep-link", "page-scrape", "robot", "spider" or other automatic devices, program, algorithm or methodology, or any similar or equivalent manual process, to access, acquire, copy or monitor any portion of the website or any Content, or in any way reproduce or circumvent the navigational structure or presentation of the website or any Content, to obtain or attempt to obtain any materials, documents or information through any means not purposely made available through the website. We reserve the right to bar any such activity.
            
            Whilst we try to keep any disruption to MySA® and associated services to a minimum, MySA® and associated services may become unavailable from time to time in order for us to carry out planned and unplanned maintenance and security updates. We will not provide notice of this.
            
            We will not be obliged to restore any of your data which may be deleted in the course of suspending, withdrawing or restricting your access to our website or our Services.
            
            4.SECURITY
            
              
            
            Your right to access our website and our Services is personal to you. You must not allow any other person to have access to your account or our Services using your username or password. You must keep confidential any username, password or other information you choose or are provided with, as part of our security procedures. You must not disclose them to any other person nor keep them in any form or format that would allow them to be accessed by or on behalf of another person.
            
            You are responsible for all use of our website and our Services when access is obtained through the use of your username and password, whether or not authorized. For your security, we recommend that you close all open browsers relating to our website on completion of your visit. Should you have any reason to believe that any of your personal or account information has been compromised or exposed to any other person, either by your own actions or the actions of others, you must immediately notify us and reset your password.
            
            5. INDEMNIFICATION
            
              
            
            You agree to indemnify, defend and hold harmless MySA® and its affiliated companies, officers, directors, employees, agents, licensors, and suppliers from and against all losses, expenses, damages, and costs, including but not limited to reasonable attorneys’ fees, resulting from
            
            your access to or use MySA®,
            
            your violation of the Terms
            
            your use of any products or services purchased or obtained by you in connection with MySA®,
            
            the infringement by you, or any third party using your account, of any intellectual property or other right of any person or entity. MySA® reserves the right, at your expense, to assume the exclusive defense and control of any matter subject to indemnification by you.
            
            6. LIMITATION OF LIABILITY
            
              
            
            In no event shall MySA®, nor any of its directors, representatives and employees, be liable to you for anything arising out of or in any way connected with your use of this Website, whether such liability is under contract, tort or otherwise, and MySA® including its directors, representatives, and employees shall not be, liable for any indirect, consequential or special liability arising out of or in any way related to your use of this Website.
            
            A ]  The site is made available to you on an “as is” and “as available” basis. Your use of the site is at your own discretion and risk. MySA® makes no claims or promises about the quality, accuracy, or reliability of the site, its safety or security, or the site content. Accordingly, MySA® is not liable to you for any loss or damage that might arise from your use of the site.
            
            B ]  MySA® does not warrant that the functions contained on the site will be uninterrupted or error-free, that defects will be corrected, or that the site or any third party site, or the servers that make them available, are or will be free of viruses or other harmful components.
            
            7. INTELLECTUAL PROPERTY RIGHTS
            
              
            
            All intellectual property rights in our website, in the material published on it and in its component systems are owned by and licensed to us. All content on our website is subject to copyright with all rights reserved.
            
            Images, trade marks and brands are also protected by intellectual property laws and may not be reproduced or appropriated in any manner without permission of the respective owners.
            
            You must not remove any acknowledgement that we or any of our contributors is the author of any website content or any content we provide to you as part of the Services.
            
            You may download or print content or individual sections or pages of our website for your personal use and information only, provided that any such copy has attached to it the relevant proprietary notices and/or disclaimers. Any material downloaded or otherwise obtained through our website is done at your own discretion and risk and you are solely responsible for any damage to your computer system or loss of data that results from the download of any such material.
            
            You must not modify, adapt, copy, download or post material from our website nor store any part of our website in any other website or include it in any public or private electronic retrieval system.
        
        If you print off, copy, download or post to social media any part of our website in breach of these Terms you must, at our option, return or destroy any copies of the materials you have made.
        
        Nothing in the Agreement or our Services grants you, by implication, estoppel, or otherwise, any license or right to copy, modify, sell, reproduce, distribute, republish, display, post, create derivative works from or transmit in any form (including in-line linking or mirroring) any of our Partners' Intellectual Property.
        
        8. LICENCE
        
          
        
        You licence us to use any information, data, materials or other content you provide to us through our website or that we obtain on your behalf as part of the services we provide (such as your social information) and you agree that we can use, modify, display, distribute and create new material using the Content so that we may provide our Services to you and for any other purposes set out in these Terms, including our Privacy Policy.
        
        By submitting Content you confirm and agree that the owner of that Content has expressly agreed that, without any particular time limit, and without the payment of any fees, we may use the Content for the purposes set out in these Terms.
        
        9. CORPORATE CUSTOMERS
        
          
        
        When permitted by law, COVE VENTURE and COVE VENTURE’s clients and any partners will not be responsible for lost profits, revenues, or data, financial losses or indirect, special, consequential, exemplary, or punitive damages.
        
        In all cases, COVE VENTURE it’s client and any partner will not be liable for any loss or damage that is not reasonably foreseeable.
        
        By accepting the terms and conditions you also accept to agree the T&C of your employer and not to hold your employer liable and take any legal action against them.
        
        These disclaimers and exclusions shall be governed by and construed in accordance with Indian law. Liability is not limited by the above disclaimers in relation to death or personal injury arising from negligence on the part of COVE VENTURE.
        
        Whilst precautions are taken to detect computer viruses and ensure security, COVE VENTURE cannot guarantee that the website is virus-free and secure. COVE VENTURE shall not be liable for any loss or damage which may occur as a result of any virus or breach of security.
        
        Whilst making every attempt to secure personal data, COVE VENTURE cannot accept responsibility for any unauthorised access or loss of personal information that is beyond the control of the COVE VENTURE.
        
        10. FORCE MAJEURE
        
          
        
        We shall not be liable for any failure to perform any obligations under this T&Cs if the performance is prevented, hindered or delayed by a Force Majeure Event and in such case, its obligations shall be suspended for so long as the Force Majeure Event continues. For the Purpose of this clause “Force Majeure Event” shall mean any event arising due to any cause beyond the reasonable control of the Party, including, without limitation, unavailability of any communication system, sabotage, fire, flood, explosion, acts of God, civil commotion, strikes or industrial action of any kind, riots, insurrection, war or acts of government.
        
        11. GOVERNING LAW & JURISDICTION
        
          
        
        These Terms will be governed by and construed in accordance with the laws of the country of India and exclusive jurisdiction shall be in the state of Maharashtra, and you submit to the exclusive jurisdiction of the state and courts located in the country of India for the resolution of any disputes.
        
        12. REFUND POLICY :
        
          
        
        We stand behind our products and your satisfaction with them is important to us. However, because our products service is delivered via Internet we offer no refunds.
        
        If customer paid twice for one transaction, the one transaction amount will be refunded via same source within 15 to 20 working days.
        
        After successfully payment client will have access to account immediately. If the person has hidden his score and is inaccessible then MySA is not responsible to display the person’s score. If the person is not available then it will take two weeks to share his score.
""", preferredStyle: UIAlertControllerStyle.alert)
        let okaction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
        
        myalert.addAction(okaction)
        
        self.present(myalert, animated: true, completion:nil)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var secondviewcontroller = segue.destination as! otpview
        secondviewcontroller.email2 = self.email1.text!
        secondviewcontroller.mobile2 = self.phoneno.text!
    }
    
    override func viewDidLoad() {
        
            super.viewDidLoad()
            self.hideKeyboardWhenTappedAround()
        
        
        self.fname.delegate = self
        self.lname.delegate = self
        self.bdate.delegate = self
        self.email1.delegate = self
        self.username1.delegate = self
        self.password1.delegate = self
        self.companyname.delegate = self
        self.phoneno.delegate = self
        
        
        createdatepicker()
        checkbox.delegate = self
        super.viewDidLoad()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    @IBOutlet weak var datepickertext: UITextField!
    let datepicker = UIDatePicker()
    
    @IBOutlet weak var picker1: UIPickerView!
    @IBOutlet weak var picker2: UIPickerView!
    @IBOutlet weak var picker3: UIPickerView!
    
    @IBOutlet weak var label1: UIButton!
    @IBOutlet weak var label2: UIButton!
    @IBOutlet weak var label3: UIButton!
    @IBOutlet weak var fname: UITextField!
    @IBOutlet weak var lname: UITextField!
    @IBOutlet weak var bdate: UITextField!
    @IBOutlet weak var email1: UITextField!
    @IBOutlet weak var username1: UITextField!
    @IBOutlet weak var password1: UITextField!
    @IBOutlet weak var companyname: UITextField!
    @IBOutlet weak var phoneno: UITextField!
    
    
    
    let iam = ["User", "Partner"]
    let titledata = ["Mr.", "Mrs.", "Ms."]
    let gender = ["Male", "Female"]
    
    @IBAction func onclick1(_ sender: Any) {
        picker1.isHidden = false
    }
    @IBAction func onclick2(_ sender: Any) {
        picker2.isHidden = false
    }
    @IBAction func onclick3(_ sender: Any) {
        picker3.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 1{
            return iam.count
        }else if pickerView.tag == 2{
            return titledata.count
        }else{
            return gender.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 1{
            return iam[row]
        }else if pickerView.tag == 2{
            return titledata[row]
        }else{
            return gender[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag == 1{
            label1.setTitle( iam[row], for: UIControlState.normal)
            picker1.isHidden = true
        }else if pickerView.tag == 2{
            label2.setTitle( titledata[row], for: UIControlState.normal)
            picker2.isHidden = true
        }else{
            label3.setTitle( gender[row], for: UIControlState.normal)
            picker3.isHidden = true
        }
    }
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        
        if pickerView.tag == 1{
            let titleData = iam[row]
            let myTitle = NSAttributedString(string: titleData, attributes: [NSAttributedStringKey.font:UIFont(name: "Georgia", size: 15.0)!,NSAttributedStringKey.foregroundColor:UIColor.white])
            return myTitle
        }else if pickerView.tag == 2{
            let titleData = titledata[row]
            let myTitle = NSAttributedString(string: titleData, attributes: [NSAttributedStringKey.font:UIFont(name: "Georgia", size: 15.0)!,NSAttributedStringKey.foregroundColor:UIColor.white])
            return myTitle
        }else{
            let titleData = gender[row]
            let myTitle = NSAttributedString(string: titleData, attributes: [NSAttributedStringKey.font:UIFont(name: "Georgia", size: 15.0)!,NSAttributedStringKey.foregroundColor:UIColor.white])
            return myTitle
        }
    }
    @IBAction func cancelBtnPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func createdatepicker(){
        datepicker.datePickerMode = .date
        
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        datepicker.maximumDate = Calendar.current.date(byAdding: .year, value: -18, to: Date())

        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donepressed))
        toolbar.setItems([doneButton], animated: true)
        
        datepickertext.inputAccessoryView = toolbar
        
        datepickertext.inputView = datepicker
    }
    
    @objc func donepressed(){
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "yyyy-MM-dd"
        
        datepickertext.text = dateformatter.string(from: datepicker.date)
        self.view.endEditing(true)
    }

    @IBAction func signUp(_ sender: Any) {
        let title = self.label2.titleLabel!.text
        let firstname = self.fname.text
        let lastname = self.lname.text
        let company = self.companyname.text
        let gender = self.label3.titleLabel!.text
        let email = self.email1.text
        let mobile = self.phoneno.text
        let username = self.username1.text
        let password = self.password1.text
        let dob = self.datepickertext
        var dobb = ""
        dobb = (dob?.text)!
        let usertype = self.label1.titleLabel!.text
        
        
    
        if ((firstname?.isEmpty)! || (lastname?.isEmpty)! || (dobb.isEmpty) || (email?.isEmpty)! ||  (username?.isEmpty)! || (password?.isEmpty)! || (company?.isEmpty)! || (mobile?.isEmpty)!  ){
            fname.attributedPlaceholder = NSAttributedString(string: "Enter First Name", attributes: [NSAttributedStringKey.foregroundColor : UIColor.red])
            lname.attributedPlaceholder = NSAttributedString(string: "Enter Last Name", attributes: [NSAttributedStringKey.foregroundColor : UIColor.red])
            bdate.attributedPlaceholder = NSAttributedString(string: "Enter Birth Date", attributes: [NSAttributedStringKey.foregroundColor : UIColor.red])
            username1.attributedPlaceholder = NSAttributedString(string: "Enter Username", attributes: [NSAttributedStringKey.foregroundColor : UIColor.red])
            email1.attributedPlaceholder = NSAttributedString(string: "Enter email address", attributes: [NSAttributedStringKey.foregroundColor : UIColor.red])
            password1.attributedPlaceholder = NSAttributedString(string: "Enter password", attributes: [NSAttributedStringKey.foregroundColor : UIColor.red])
            companyname.attributedPlaceholder = NSAttributedString(string: "Enter Company Name", attributes: [NSAttributedStringKey.foregroundColor : UIColor.red])
            phoneno.attributedPlaceholder = NSAttributedString(string: "Enter phone no.", attributes: [NSAttributedStringKey.foregroundColor : UIColor.red])
            
            correct = 0
        }else{
            //correct = 1
            func checkTextSufficientComplexity( text : String) -> Bool{
                
                
                var text = text
                let capitalLetterRegEx  = ".*[A-Z]+.*"
                var texttest = NSPredicate(format:"SELF MATCHES %@", capitalLetterRegEx)
                var capitalresult = texttest.evaluate(with: text)
                print("\(capitalresult)")
                
                
                let numberRegEx  = ".*[0-9]+.*"
                var texttest1 = NSPredicate(format:"SELF MATCHES %@", numberRegEx)
                var numberresult = texttest1.evaluate(with: text)
                print("\(numberresult)")
                
                
                let specialCharacterRegEx  = ".*[!&^%$#@()/]+.*"
                var texttest2 = NSPredicate(format:"SELF MATCHES %@", specialCharacterRegEx)
                
                var specialresult = texttest2.evaluate(with: text)
                print("\(specialresult)")
                
                return capitalresult && numberresult && specialresult
                
            }
            
            func checknumber( text : String) -> Bool{
                
                let numberRegEx  = ".*[0-9]+.*"
                var texttest1 = NSPredicate(format:"SELF MATCHES %@", numberRegEx)
                var numberresult = texttest1.evaluate(with: text)
                print("\(numberresult)")
                
                return numberresult
                
            }
            
            var length = mobile?.lengthOfBytes(using: String.Encoding.ascii)
            print(length)
            if length != 10
            {
                var myalert = UIAlertController(title: "Alert", message: "Enter valid Mobile Number", preferredStyle: UIAlertControllerStyle.alert)
                let okaction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
                
                myalert.addAction(okaction)
                
                self.present(myalert, animated: true, completion:nil)
                
                correct = 0
            }else{
                //correct = 1
                
                var checkno = checknumber(text: mobile!)
                if checkno == false
                {
                    var myalert = UIAlertController(title: "Alert", message: "Enter valid Mobile Number", preferredStyle: UIAlertControllerStyle.alert)
                    let okaction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
                    
                    myalert.addAction(okaction)
                    
                    self.present(myalert, animated: true, completion:nil)
                    
                    correct = 0
                }else{
                    //correct = 1
                    
                    var checkpass = checkTextSufficientComplexity(text: password!)
                    if checkpass == false
                    {
                        var myalert = UIAlertController(title: "Alert", message: "Password should contain atleast one Capital letter, a number and a special character", preferredStyle: UIAlertControllerStyle.alert)
                        let okaction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
                        
                        myalert.addAction(okaction)
                        
                        self.present(myalert, animated: true, completion:nil)
                        correct = 0
                    }else{
                        //correct = 1
                        if checkbox.on == false{
                            var myalert = UIAlertController(title: "Alert", message: "Please agree to the terms and conditions before signing up", preferredStyle: UIAlertControllerStyle.alert)
                            let okaction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
                            
                            myalert.addAction(okaction)
                            
                            self.present(myalert, animated: true, completion:nil)
                            correct = 0
                        }else{
                            //correct = 1
                            
                            let parameters: Parameters = [
                                "field": "Mobile",
                                "value": mobile as! String
                            ]
                            let url = NSURL(string: "https://mysascore.com:8443/Mysa2.0/checkuser")
                            let request = NSMutableURLRequest(url: url! as URL)
                            request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
                            request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Accept")
                            
                            Alamofire.request("https://mysascore.com:8443/Mysa2.0/checkuser", method: .post, parameters: parameters, encoding: URLEncoding.httpBody).responseJSON { response in
                                
                                if let data = response.data {
                                    let json = String(data: data, encoding: String.Encoding.utf8)
                                    print("Responsecheckingemail: \(String(describing: json))")
                                    print(json)
                                    
                                    
                                    let string = json
                                    var data = string?.data(using: .utf8)!
                                    do {
                                        if let jsonArray = try JSONSerialization.jsonObject(with: data!, options : .allowFragments) as? Dictionary<String,Any>
                                        {
                                            print(jsonArray)
                                            //print(jsonArray["email"])
                                            self.data1 = jsonArray
                                        } else {
                                            print("bad json")
                                        }
                                    } catch let error as NSError {
                                        print(error)
                                    }
                                    print("checking\(self.data1)")
                                    
                                    if let exists: String = self.data1["userStatus"] as! String{
                                        if exists == "existed" {
                                            var myalert = UIAlertController(title: "Alert", message: "user already exists", preferredStyle: UIAlertControllerStyle.alert)
                                            let okaction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
                                            
                                            myalert.addAction(okaction)
                                            
                                            self.present(myalert, animated: true, completion:nil)
                                            self.correct = 0
                                        }else{
                                            self.correct = 1
                                        }
                                    }
                                }
                            }

                            
                            
                        }

                    }

                    
                    
                }
            }
            
        }
            
//            func checkTextSufficientComplexity( text : String) -> Bool{
//
//
//                var text = text
//                let capitalLetterRegEx  = ".*[A-Z]+.*"
//                var texttest = NSPredicate(format:"SELF MATCHES %@", capitalLetterRegEx)
//                var capitalresult = texttest.evaluate(with: text)
//                print("\(capitalresult)")
//                
//
//                let numberRegEx  = ".*[0-9]+.*"
//                var texttest1 = NSPredicate(format:"SELF MATCHES %@", numberRegEx)
//                var numberresult = texttest1.evaluate(with: text)
//                print("\(numberresult)")
//
//
//                let specialCharacterRegEx  = ".*[!&^%$#@()/]+.*"
//                var texttest2 = NSPredicate(format:"SELF MATCHES %@", specialCharacterRegEx)
//
//                var specialresult = texttest2.evaluate(with: text)
//                print("\(specialresult)")
//                
//                return capitalresult && numberresult && specialresult
//
//            }
//
//            func checknumber( text : String) -> Bool{
//
//                let numberRegEx  = ".*[0-9]+.*"
//                var texttest1 = NSPredicate(format:"SELF MATCHES %@", numberRegEx)
//                var numberresult = texttest1.evaluate(with: text)
//                print("\(numberresult)")
//                
//                return numberresult
//
//            }
//
//            var length = mobile?.lengthOfBytes(using: String.Encoding.ascii)
//            print(length)
//            if length != 10
//            {
//                var myalert = UIAlertController(title: "Alert", message: "Enter valid Mobile Number", preferredStyle: UIAlertControllerStyle.alert)
//                let okaction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
//
//                myalert.addAction(okaction)
//
//                self.present(myalert, animated: true, completion:nil)
//
//                correct = 0
//            }else{
//                correct = 1
//        }
//
//
//
//            var checkno = checknumber(text: mobile!)
//            if checkno == false
//            {
//                var myalert = UIAlertController(title: "Alert", message: "Enter valid Mobile Number", preferredStyle: UIAlertControllerStyle.alert)
//                let okaction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
//
//                myalert.addAction(okaction)
//
//                self.present(myalert, animated: true, completion:nil)
//             
//                correct = 0
//            }else{
//                correct = 1
//        }
//            if checkbox.on == false{
//                var myalert = UIAlertController(title: "Alert", message: "Please agree to the terms and conditions before signing up", preferredStyle: UIAlertControllerStyle.alert)
//                let okaction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
//
//                myalert.addAction(okaction)
//
//                self.present(myalert, animated: true, completion:nil)
//                correct = 0
//            }else{
//                correct = 1
//        }
        
//      let parameters: Parameters = [
//                "field": "Mobile",
//                "value": mobile as! String
//                ]
//            let url = NSURL(string: "https://mysascore.com:8443/Mysa2.0/checkuser")
//            let request = NSMutableURLRequest(url: url! as URL)
//            request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
//            request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Accept")
//
//            Alamofire.request("https://mysascore.com:8443/Mysa2.0/checkuser", method: .post, parameters: parameters, encoding: URLEncoding.httpBody).responseJSON { response in
//
//                if let data = response.data {
//                    let json = String(data: data, encoding: String.Encoding.utf8)
//                    print("Responsecheckingemail: \(String(describing: json))")
//                    print(json)
//
//
//                    let string = json
//                    var data = string?.data(using: .utf8)!
//                    do {
//                        if let jsonArray = try JSONSerialization.jsonObject(with: data!, options : .allowFragments) as? Dictionary<String,Any>
//                        {
//                            print(jsonArray)
//                            //print(jsonArray["email"])
//                            self.data1 = jsonArray
//                        } else {
//                            print("bad json")
//                        }
//                    } catch let error as NSError {
//                        print(error)
//                    }
//                    print("checking\(self.data1)")
//                    
//                    if let exists: String = self.data1["userStatus"] as! String{
//                        if exists == "existed" {
//                            var myalert = UIAlertController(title: "Alert", message: "user already exists", preferredStyle: UIAlertControllerStyle.alert)
//                            let okaction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
//
//                            myalert.addAction(okaction)
//                            
//                            self.present(myalert, animated: true, completion:nil)
//                            self.correct = 0
//                        }else{
//                            self.correct = 1
//                        }
//                    }
//                }
//            }
 
            
        
        if(correct == 1){
            let parameters: Parameters = [
                "title": title!,
                "firstname": firstname!,
                "lastname": lastname!,
                "company": company!,
                "gender": gender!,
                "email": email!,
                "mobile": mobile!,
                "username": username!,
                "password": password!,
                "resellerId": "4",
                "dob": dobb,
                "usertype": usertype!,
            ]
            let url = NSURL(string: "https://mysascore.com:8443/Mysa2.0/saveUser")
           let request = NSMutableURLRequest(url: url! as URL)
            request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
            request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Accept")

            Alamofire.request("https://mysascore.com:8443/Mysa2.0/saveUser", method: .post, parameters: parameters, encoding: URLEncoding.httpBody).responseJSON { response in
                
                if let data = response.data {
                    let json = String(data: data, encoding: String.Encoding.utf8)
                    print("Response: \(String(describing: json))")
                    print(json)
                    
                    if(json == "11"){
                        //otp and email
//                        let parameters: Parameters = [
//                            "toemail": email!,
//                            "rusername": mobile!
//                            ]
//                        let url = NSURL(string: "https://mysascore.com:8443/Mysa2.0/sendEmail")
//                        let request = NSMutableURLRequest(url: url! as URL)
//                        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
//                        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Accept")
//
//                        Alamofire.request("https://mysascore.com:8443/Mysa2.0/sendEmail", method: .post, parameters: parameters, encoding: URLEncoding.httpBody).responseJSON { response in
//
//                            if let data = response.data {
//                                let json = String(data: data, encoding: String.Encoding.utf8)
//                                print("Response: \(String(describing: json))")
//
//                            }
//                        }
                        ///
                        let parameter: Parameters = [
                            "phonenumber": mobile!,
                            "email": email!
                        ]
                        let url1 = NSURL(string: "https://mysascore.com:8443/Mysa2.0/sendotp.do")
                        let request1 = NSMutableURLRequest(url: url1! as URL)
                        request1.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
                        request1.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Accept")



                        Alamofire.request("https://mysascore.com:8443/Mysa2.0/sendotp.do", method: .post, parameters: parameter, encoding: URLEncoding.httpBody).responseJSON { response in

                            if let data = response.data {
                                let json = String(data: data, encoding: String.Encoding.utf8)
                                print("Response: \(String(describing: json))")

                            }
                        }
                        
                        
                        /////
                        
                        
                        
                        
                        
    self.performSegue(withIdentifier: "otpview", sender: self)
                    }
                  
                }
            }
                
                
            }
}
}


