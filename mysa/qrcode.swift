//
//  qrcode.swift
//  mysa
//
//  Created by Vyom Unadkat on 22/12/17.
//  Copyright © 2017 Vyom Unadkat. All rights reserved.
//

import UIKit

class qrcode: UIViewController {

    var userdetails = Dictionary<String,Any>()

    @IBOutlet weak var imageview: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let data = userdetails["uid"] as! String
        print("inqrcode\(userdetails["uid"])")
        print(data)
        
        let data1 = data.data(using: .ascii, allowLossyConversion: false)
        let filter = CIFilter(name: "CIQRCodeGenerator")
        filter?.setValue(data1, forKey: "inputMessage")
        
        let img = UIImage(ciImage: (filter?.outputImage)!)
        imageview.image = img
        // Do any additional setup after loading the view.
    }

    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    


}
