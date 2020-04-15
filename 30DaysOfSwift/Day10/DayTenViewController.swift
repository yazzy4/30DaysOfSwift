//
//  DayTenViewController.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 4/15/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class DayTenViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var data = ["Milk", "Apples", "Chicken", "Salt", "Eggs"]
    
    //Create refresh control
    private let refreshControl = UIRefreshControl()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.refreshControl = refreshControl
        self.refreshControl.addTarget(self, action: #selector(didRefreshView(_:)), for: UIControl.Event.valueChanged)
        refreshControl.tintColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        refreshControl.attributedTitle = NSAttributedString(string: "Fetching new data...")
    }
    
    //fetches hard coded data for refresh control
    //
    @objc func didRefreshView(_ sender: UIRefreshControl){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.data.append(contentsOf: ["Pears", "Blueberries", "Peaches", "Onions"])
            self.refreshControl.endRefreshing()
            self.tableView.reloadData()
        }
    }
    
}

extension DayTenViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = data[indexPath.row]
        return cell!
    }
    
    
}
