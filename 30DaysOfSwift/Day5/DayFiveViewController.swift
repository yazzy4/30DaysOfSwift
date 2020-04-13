//
//  DayFiveViewController.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 4/13/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class DayFiveViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        self.title = "Basic Table View"

    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = "Row # \(indexPath.row)"
        
        return cell!
    }


}
