//
//  SecondViewController.swift
//  Todo List
//
//  Created by Cory Dorning on 8/30/17.
//  Copyright © 2017 Cory Dorning. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var item: UITextField!
    
    @IBAction func addItem(_ sender: Any) {
        
        // if text field isn't blank
        if item.text != "" {
            // get current items
            let defaultsTodoArray = UserDefaults.standard.array(forKey: "todo")
            
            // create empty todo list
            var newTodoArray = [String]()
            
            // copy current list
            if let todoArray = defaultsTodoArray {
                newTodoArray = todoArray as! [String]
            }
            
            // append new item to list
            newTodoArray.append(item.text!)
            
            // save list as default
            UserDefaults.standard.set(newTodoArray, forKey: "todo")
            
            // reset text field
            item.text = ""
        }
    }
    
    // closes keyboard when return is pressed
    // make sure to drag text field in the storyboard to the ViewController icon and click Delegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // closes keyboard
        textField.resignFirstResponder()
        
        return true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

