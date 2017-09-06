//
//  ViewController.swift
//  Times Table
//
//  Created by Cory Dorning on 8/30/17.
//  Copyright © 2017 Cory Dorning. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var table: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 51
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        let product = indexPath.row * Int(slider.value)
        
        cell.textLabel?.text = "\(Int(slider.value)) x \(indexPath.row) = \(product)"
        
        return cell
    }
    
    @IBAction func sliderChanged(_ sender: Any) {
        (sender as AnyObject).setValue((sender as AnyObject).value.rounded(.down), animated: true)
        print(slider.value)
        
        table.reloadData()
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

