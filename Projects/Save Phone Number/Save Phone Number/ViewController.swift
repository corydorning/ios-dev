//
//  ViewController.swift
//  Save Phone Number
//
//  Created by Cory Dorning on 8/30/17.
//  Copyright © 2017 Cory Dorning. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textPhone: UITextField!
    
    @IBAction func savePhone(_ sender: Any) {
        UserDefaults.standard.set(textPhone.text, forKey: "phone")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let phoneObject = UserDefaults.standard.object(forKey: "phone")
        
        if let phone = phoneObject as? String {
            textPhone.text = phone
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

