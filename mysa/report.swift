//
//  report.swift
//  mysa
//
//  Created by Vyom Unadkat on 22/12/17.
//  Copyright © 2017 Vyom Unadkat. All rights reserved.
//

import UIKit

class report: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


        self.hideKeyboardWhenTappedAround()
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}