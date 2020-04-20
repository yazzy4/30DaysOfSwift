//
//  DayTwelveViewController.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 4/20/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class DayTwelveViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
       
     var data = ["Milk", "Apples", "Chicken", "Salt", "Eggs"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        //add bar button
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addNewItem(_:)))
    }
    
    @objc func addNewItem(_ sender: UIBarButtonItem){
        performSegue(withIdentifier: DayTwelveAddViewController.identifier, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == DayTwelveAddViewController.identifier {
            let vc = segue.destination as! DayTwelveAddViewController
            vc.delegate = self
        }
    }

}

extension DayTwelveViewController: DayTwelveAddViewControllerDelegate{
    func didAddNewItem(controller: DayTwelveAddViewController, item: String) {
        self.data.append(item)
        self.tableView.reloadData()
    }
    
    
}

extension DayTwelveViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = data[indexPath.row]
        return cell!
    }
    
    
}
