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
