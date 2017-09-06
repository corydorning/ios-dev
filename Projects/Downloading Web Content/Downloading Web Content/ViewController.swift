//
//  ViewController.swift
//  Downloading Web Content
//
//  Created by Dorning, Cory on 9/5/17.
//  Copyright © 2017 Dorning, Cory. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var webview: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = URL(string: "https://stackoverflow.com/")!
        
        /*
        // load from web
        webview.loadRequest(URLRequest(url: url))
        
        // load from html string
        webview.loadHTMLString("<h1>Hello World!", baseURL: nil)
        */
        
        // get html from site
        let request = NSMutableURLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request as URLRequest) {data, response, error in
            if let error = error {
                print(error)
            } else {
                if let unwrappedData = data {
                    let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                    
                    print(dataString)
                    
                    DispatchQueue.main.sync(execute: {
                        // Update UI
                    })
                }
            }
        }
        
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

import Foundation

func QCFNetworkCopySystemProxySettings() -> CFDictionary? {
    guard let proxiesSettingsUnmanaged = CFNetworkCopySystemProxySettings() else {
        return nil
    }
    return proxiesSettingsUnmanaged.takeRetainedValue()
}

func QCFNetworkCopyProxiesForURL(_ url: URL, _ proxiesSettings: CFDictionary) -> [[String:AnyObject]] {
    let proxiesUnmanaged = CFNetworkCopyProxiesForURL(url as CFURL, proxiesSettings)
    let proxies = proxiesUnmanaged.takeRetainedValue()
    return proxies as! [[String:AnyObject]]
}


