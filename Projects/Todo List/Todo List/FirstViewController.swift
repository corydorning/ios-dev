//
//  FirstViewController.swift
//  Todo List
//
//  Created by Cory Dorning on 8/30/17.
//  Copyright © 2017 Cory Dorning. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var todoTable: UITableView!
    
    var items: [String] = []
    
    func getTodoList() -> Array<Any> {
        return UserDefaults.standard.array(forKey: "todo") ?? []
    }
    
    // sets number of table rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    // sets data in table cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = items[indexPath.row]
        
        return cell
    }
    
    // adding delete capability to table
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    // deletes data from table cell
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.delete) {
            // remove item from array
            items.remove(at: indexPath.row)
            
            // save array to defaults
            UserDefaults.standard.set(items, forKey: "todo")
            
            // reload table
            todoTable.reloadData()       }
    }
    
    // viewDidAppear method will be needed

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let tempItems = UserDefaults.standard.array(forKey: "todo") {
            items = tempItems as! [String]
        }
        
        todoTable.reloadData()
        
        print(getTodoList())
    }


}

