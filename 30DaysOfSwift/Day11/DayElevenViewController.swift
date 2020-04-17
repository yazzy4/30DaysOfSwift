//
//  DayElevenViewController.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 4/15/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class DayElevenViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
      
    var data = ["Milk", "Apples", "Chicken", "Salt", "Eggs"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Moving and Deleting"
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        //adding edit button
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
 
    //adding delete button
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            data.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = data[indexPath.row]
        return cell!
    }
    

}

