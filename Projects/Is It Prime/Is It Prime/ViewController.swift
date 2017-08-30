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
        var isPrime: Bool = true
        
        if let userEnteredString = textNumber.text {
            let userEnteredInteger = Int(userEnteredString)
            
            if let num = userEnteredInteger {
                // algorithm taken from here:
                // https://stackoverflow.com/questions/1801391/what-is-the-best-algorithm-for-checking-if-a-number-is-prime
                if num == 2 || num == 3 {
                    isPrime = true
                } else if num % 2 == 0 || num % 3 == 0 {
                    isPrime = false
                } else {
                    var i = 5
                    var w = 2
                    
                    while i * i <= num {
                        if num % i == 0 {
                            isPrime = false
                        }
                        
                        i += w
                        w = 6 - w
                    }
                }
                
                if isPrime {
                    labelResult.text = "The number \(num) is Prime!"
                } else {
                    labelResult.text = "The number \(num) is not Prime!"
                }
            } else {
                labelResult.text = "Please enter a positive whole number."
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

