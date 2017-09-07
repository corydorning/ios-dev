//
//  ViewController.swift
//  Permanent Data Storage
//
//  Created by Cory Dorning on 8/30/17.
//  Copyright © 2017 Cory Dorning. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // once set it can be commented out, as it is saved
        //UserDefaults.standard.set("Cory Dorning", forKey: "name")
        
        // recall default name
        let nameObject = UserDefaults.standard.object(forKey: "name")
        
        // prints as optional
        print(nameObject)
        
        // casts as string and prints only if its non-optional (set)
        if let name = nameObject as? String {
            print(name)
        }
        
        // set default array
        // once set it can be commented out, as it is saved
        //let arr = [1, 2, 3, 4]
        //UserDefaults.standard.set(arr, forKey: "myArray")
        
        // recall default array
        let arrayObject = UserDefaults.standard.object(forKey: "myArray")
        
        if let myArray = arrayObject as? NSArray {
            print(myArray)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

