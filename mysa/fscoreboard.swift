//
//  fscoreboard.swift
//  mysa
//
//  Created by Vyom Unadkat on 31/12/17.
//  Copyright © 2017 Vyom Unadkat. All rights reserved.
//

import UIKit
//import Charts


class fscoreboard: UIViewController {

    @IBOutlet weak var pieView: PieChartView!
    var jsondata = [Dictionary<String,Any>]()
    var months: [String]!
    @IBOutlet weak var scrollview: UIScrollView!
    var score: Int!
    var piescore: Double!
    var piescore2: Double!
    
    
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var scoree: UILabel!
    @IBOutlet weak var rscore: UILabel!
    @IBOutlet weak var pscore: UILabel!
    @IBOutlet weak var fscore: UILabel!
    
    
    
    func setChart(dataPoints:[String], values: [Double]){
        pieView.noDataText = "You need to provide data for the chart."
        
        
        pieView.chartDescription?.text = ""
        var dataEntries: [PieChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            
            let dataEntry = PieChartDataEntry(value: values[i], label: months[i])
            dataEntries.append(dataEntry)
        }
        let pieChartDataSet = PieChartDataSet(values: dataEntries, label: "")
        //pieChartDataSet.colors = ChartColorTemplates.colorful()
        
        pieView.backgroundColor = UIColor(red: 189/255, green: 195/255, blue: 199/255, alpha: 1)
        
        var dataSets = [IChartDataSet]()
        dataSets.append(pieChartDataSet)
        
        let chartData = PieChartData(dataSets: dataSets)
        
        pieView.data = chartData
        pieView.animate(xAxisDuration: 2)
        //pieView.centerText = "\(self.piescore)/1000"
        
        if jsondata[0]["mysaScore"] as! Int >= 400{
            let attachment = NSTextAttachment()
            attachment.image = UIImage(named: "Webp.net-resizeimage (6)")
            let attachmentString = NSAttributedString(attachment: attachment)
            let labelImg = NSMutableAttributedString(string: "")
            labelImg.append(attachmentString)
            
            pieView.centerAttributedText = labelImg
        }else{
            
            let attachment = NSTextAttachment()
            attachment.image = UIImage(named: "Webp.net-resizeimage (7)")
            let attachmentString = NSAttributedString(attachment: attachment)
            let labelImg = NSMutableAttributedString(string: "")
            labelImg.append(attachmentString)
            
            pieView.centerAttributedText = labelImg
        }
        
        
        
        
        
        
        var colors: [UIColor] = []
        
        colors.append(UIColor.green)
        colors.append(UIColor.red)
        pieChartDataSet.colors = colors
        pieChartDataSet.valueTextColor = UIColor.black
        
    }
    
    
    
    
    @IBAction func back(_ sender: Any) {
    dismiss(animated: true, completion: nil)
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        self.hideKeyboardWhenTappedAround()
        scrollview.contentSize.height = 1200
        
        print("infscoreboard\(jsondata)")
        
        
        
        var piescore = self.jsondata[0]["mysaScore"]
        var piescore2 = Double(1000) - (self.jsondata[0]["mysaScore"] as! Double)
        
        
        print(piescore)
        
        self.months = ["", ""]
        
        var val = [Double]()
        val = [piescore as! Double, piescore2]
        self.setChart(dataPoints: self.months, values: val)
        
        
        
        // Do any additional setup after loading the view.
        
        name.text = jsondata[0]["sName"] as! String
        scoree.text = String(jsondata[0]["mysaScore"] as! Double)
        rscore.text = String(describing: jsondata[0]["relationalScore"]! )
        pscore.text = String(describing: jsondata[0]["professionalScore"]! )
        fscore.text = String(describing: jsondata[0]["financialScore"]! )
    }

    

   
}
