//
//  ViewController.swift
//  Whats the Weather
//
//  Created by Cory Dorning on 9/6/17.
//  Copyright © 2017 Cory Dorning. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var city: UITextField!
    @IBOutlet weak var forecast: UILabel!
    
    @IBAction func submit(_ sender: Any) {
        // make sure city isn't blank
        if let cityText = city.text?.replacingOccurrences(of: " ", with: "-"), !cityText.isEmpty {
            let urlString = "http://www.weather-forecast.com/locations/\(cityText)/forecasts/latest"
            
            //
            if let url = URL(string: urlString), let html = try? String(contentsOf: url, encoding: String.Encoding.utf8) {
                var split = "3 Day Weather Forecast Summary:</b><span class=\"read-more-small\"><span class=\"read-more-content\"> <span class=\"phrase\">"
                
                let contentArray = html.components(separatedBy: split)
                
                if contentArray.count > 0 {
                    split = "</span>"
                    
                    let weather = contentArray[1].components(separatedBy: split)
                    
                    forecast.text = weather[0].replacingOccurrences(of: "&deg;", with: "°")
                }
                
                
            } else {
                forecast.text = "\(cityText) doesn't appear to be a valid city"
            }
            
        } else {
            forecast.text = "Please enter a city."
        }
    }
    
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

