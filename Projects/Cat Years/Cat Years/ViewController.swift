//
//  ViewController.swift
//  Cat Years
//
//  Created by Cory Dorning on 8/29/17.
//  Copyright © 2017 Cory Dorning. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textCatAge: UITextField!
    @IBOutlet weak var labelCatAge: UILabel!
    
    @IBAction func buttonGetAge(_ sender: Any) {
        if let catAge: Int = Int(textCatAge.text!) {
            let catAgeText = String(catAge * 7)
            
            labelCatAge.text = "Your cat is " + catAgeText + " in cat years"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

