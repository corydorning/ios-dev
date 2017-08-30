//
//  ViewController.swift
//  Is It Prime
//
//  Created by Cory Dorning on 8/29/17.
//  Copyright © 2017 Cory Dorning. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textNumber: UITextField!
    @IBOutlet weak var labelResult: UILabel!
    
    
    @IBAction func buttonCheck(_ sender: Any) {
        var isPrime = false
        
        if let num = Int(textNumber.text!) {
            if num == 2 || num == 3 {
                isPrime = true
            } else if (num % 2 == 0 || num % 3 == 0) {
                isPrime = false
            }
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

