//
//  ViewController.swift
//  Controlling The Keyboard
//
//  Created by Cory Dorning on 8/30/17.
//  Copyright © 2017 Cory Dorning. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // closes keyboard when return is pressed make sure to drag text
    // field in the storyboard to the ViewController icon and click Delegate
    // Also be sure to add UITextFieldDelegate to the ViewController class definition
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // closes keyboard
        textField.resignFirstResponder()
        
        return true
    }
    
    // closes keyboard when touching outside of it
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
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

