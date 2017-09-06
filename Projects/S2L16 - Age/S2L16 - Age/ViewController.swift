//
//  ViewController.swift
//  S2L16 - Age
//
//  Created by Cory Dorning on 8/28/17.
//  Copyright © 2017 Cory Dorning. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textName: UITextField!
    @IBOutlet weak var textAge: UITextField!
    @IBOutlet weak var labelAge: UILabel!
    
    @IBAction func ButtonClicked(_ sender: Any) {
        if let age = textAge.text, let name = textName.text {
            labelAge.text = name + ", you are " + age + " years old"
        }
    }
    @IBAction func ButtonClear(_ sender: Any) {
        textName.text = ""
        textAge.text = ""
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

