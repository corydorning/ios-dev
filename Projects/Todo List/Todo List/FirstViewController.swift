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
    
    func getTodoList() -> Array<Any> {
        return UserDefaults.standard.array(forKey: "todo") ?? []
    }
    
    // adding delete capability to table
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    // deletes data from table cell
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.delete) {
            // handle delete (by removing the data from your array and updating the tableview)
            var currentTodoList = getTodoList()
            
            currentTodoList.remove(at: indexPath.row)
            
            UserDefaults.standard.set(currentTodoList, forKey: "todo")
            
            todoTable.reloadData()       }
    }
    
    // sets number of table rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let todoList = getTodoList()
        
        // Nil Coalescing
        let count = todoList.count
        
        return count
    }
    
    // sets data in table cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        let text = getTodoList()[indexPath.row]
        
        cell.textLabel?.text = text as? String
        
        return cell
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
        
        todoTable.reloadData()
        
        print(getTodoList())
    }


}

