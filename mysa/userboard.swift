//
//  userboard.swift
//  mysa
//
//  Created by Vyom Unadkat on 22/12/17.
//  Copyright © 2017 Vyom Unadkat. All rights reserved.
//

import UIKit
import Charts
import Alamofire

class userboard: UIViewController {

    var months: [String]!
    var months2: [String]!
    
    @IBOutlet weak var scoreboard: UILabel!
    var jsondata = Dictionary<String,Any>()
    var userdetails = Dictionary<String,Any>()
    var data1: Dictionary<String,Any> = ["":""]

    var uid: String!
    
    var score: Int!
    var piescore: Double!
    var piescore2: Double!
    
    var peerscore: Double!
    var emailandmobscore: Double!
    var socialprofilescore: Double!
    var docverscore: Double!
    

    @IBOutlet weak var fname: UILabel!
    @IBOutlet weak var lname: UILabel!
    @IBOutlet weak var bdate: UILabel!
    @IBOutlet weak var company: UILabel!
    @IBOutlet weak var emailid: UILabel!
    @IBOutlet weak var contactno: UILabel!
    
    
    @IBOutlet weak var scrollview: UIScrollView!
    
    @IBOutlet weak var pieView: PieChartView!
    @IBOutlet weak var pieView2: PieChartView!
    
    func setChart(dataPoints:[String], values: [Double]){
        pieView.noDataText = "You need to provide data for the chart."
        
        
        pieView.chartDescription?.text = ""
        var dataEntries: [PieChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            
            let dataEntry = PieChartDataEntry(value: values[i], label: months[i])
            dataEntries.append(dataEntry)
        }
        let pieChartDataSet = PieChartDataSet(values: dataEntries, label: "")
        pieChartDataSet.colors = ChartColorTemplates.colorful()
        
        pieView.backgroundColor = UIColor(red: 189/255, green: 195/255, blue: 199/255, alpha: 1)
        pieChartDataSet.valueTextColor = UIColor.black
        var dataSets = [IChartDataSet]()
        dataSets.append(pieChartDataSet)
        
        let chartData = PieChartData(dataSets: dataSets)
        
        pieView.data = chartData
        pieView.animate(xAxisDuration: 2)
        //pieView.centerText = "\(self.piescore)/1000"
        
    }
    
    func setChart2(dataPoints:[String], values: [Double]){
        pieView.noDataText = "You need to provide data for the chart."
        
        
        pieView2.chartDescription?.text = ""
        var dataEntries: [PieChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            
            let dataEntry = PieChartDataEntry(value: values[i], label: months2[i])
            dataEntries.append(dataEntry)
        }
        let pieChartDataSet = PieChartDataSet(values: dataEntries, label: "")
        pieChartDataSet.colors = ChartColorTemplates.colorful()
        
        pieView2.backgroundColor = UIColor(red: 189/255, green: 195/255, blue: 199/255, alpha: 1)
        pieChartDataSet.valueTextColor = UIColor.black
        var dataSets = [IChartDataSet]()
        dataSets.append(pieChartDataSet)
        
        let chartData = PieChartData(dataSets: dataSets)
        
        pieView2.data = chartData
        pieView2.animate(xAxisDuration: 2)
        //pieView.centerText = "\(self.piescore)/1000"
        
    }
    

    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        scrollview.contentSize.height = 2000
        
        
        print("sdfkdfks\(jsondata)")
        print("sdsdsdsdsfef\(userdetails)")
        
        uid = userdetails["uid"] as! String
        print("uiddddd\(uid)")
        //****
        
        let parameters =
            ["uid": uid!]
        
        
        let url = NSURL(string: "https://mysascore.com:8443/Mysa2.0/getChartData")
        let request = NSMutableURLRequest(url: url! as URL)
        
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Accept")
        
        Alamofire.request("https://mysascore.com:8443/Mysa2.0/getChartData", method: .post, parameters: parameters, encoding: URLEncoding.httpBody).responseJSON { response in
            
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
                        //print(jsonArray["email"])
                        self.data1 = jsonArray
                    } else {
                        print("bad json")
                    }
                } catch let error as NSError {
                    print(error)
                }
            }
            
        }
        
        print(data1)
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        //*****
        
       
        
        let when = DispatchTime.now() + 2 // change 2 to desired number of seconds
        DispatchQueue.main.asyncAfter(deadline: when) {
            self.score = self.jsondata["MsaScore"] as! Int
            print(self.score)
            self.scoreboard.text = String(self.score)
            self.fname.text = self.userdetails["firstname"] as! String
            self.lname.text = self.userdetails["lastname"] as! String
            self.bdate.text = self.userdetails["dob"] as! String
            self.company.text = self.userdetails["company"] as! String
            self.emailid.text = self.userdetails["email"] as! String
            self.contactno.text = self.userdetails["mobile"] as! String
            var piescore = self.jsondata["MsaScore"]
            var piescore2 = Double(1000) - (self.jsondata["MsaScore"] as! Double)
            self.peerscore = self.data1["PeerScore"] as! Double
            self.emailandmobscore = self.data1["EmailandMobScore"] as! Double
            self.socialprofilescore = self.data1["SocialScore"] as! Double
            self.docverscore = self.data1["DocScore"] as! Double
            
            print(piescore)
            
            self.months = ["Mysa Score", "Improve Score to be"]
            self.months2 = ["Peer Score:\(self.peerscore!)", "Email and Mobile Verification Score:\(self.emailandmobscore!)", "Social Profile Score:\(self.socialprofilescore!)", "Document Verification:\(self.docverscore!)"]

            var val = [Double]()
            var val2 = [Double]()
            val = [piescore as! Double, piescore2]
            val2 = [300, 250, 250, 200]
            self.setChart(dataPoints: self.months, values: val)
            self.setChart2(dataPoints: self.months2, values: val2)
            
        }

        
            self.hideKeyboardWhenTappedAround()
        
        
        // Do any additional setup after loading the view.
        
        
        
        
        
        
        
    }

    
    
    
    
}

