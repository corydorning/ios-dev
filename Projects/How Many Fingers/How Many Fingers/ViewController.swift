//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Cory Dorning on 8/29/17.
//  Copyright © 2017 Cory Dorning. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textGuess: UITextField!
    @IBOutlet weak var labelResult: UILabel!
    
    @IBAction func buttonGuess(_ sender: Any) {
        let fingers = String(arc4random_uniform(6))
        
        if fingers == textGuess.text {
            labelResult.text = "You're Right! It was \(fingers)."
        } else {
            labelResult.text = "Wrong! It was \(fingers)."
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

