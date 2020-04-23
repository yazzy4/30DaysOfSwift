//
//  DaySixteenViewController.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 4/22/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class DaySixteenViewController: UIViewController {
    
    var cars = ["Audi", "Ashton Martin", "BMW", "Bugatti", "Bentley", "Cheverlet", "Dodge", "Ferrari", "Ford", "Honda", "Jaguar", "Lamborghini", "Mercedes", "Mazda", "Nissan", "Porche", "Rolls Royce", "Toyota", "Volkswagon"]
    
    @IBOutlet weak var tableView: UITableView!
    
    var carModel = [String : [String]]()
    var sectionTitle = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.populateData()

    }
    
    func populateData() {
        for car in cars {
            //extracts the first letter out of an array
            let currentCarKey = String(car.prefix(1))
            if var carEntries = carModel[currentCarKey]{
                carEntries.append(car)
            }
        }
    }

}

extension DaySixteenViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        sectionTitle.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let key = sectionTitle[section]
        if let value = carModel[key] {
            return value.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        let key = sectionTitle[indexPath.section]
        if let value = carModel[key] {
            cell?.textLabel?.text = value[indexPath.row]
        }
        return cell!
    }
}
