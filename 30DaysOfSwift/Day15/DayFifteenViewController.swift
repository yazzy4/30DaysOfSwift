//
//  DayFifteenViewController.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 4/21/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class DayFifteenViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var data = [Day15DataModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        data = Day15DataModel.parseData()
    }


}

class DayFifteenTableViewCell: UITableViewCell {
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
}

extension DayFifteenViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! DayFifteenTableViewCell
        let obj = data[indexPath.row]
        cell.nameLabel.text = obj.name!
        cell.addressLabel.text = obj.address!
        //generates about 27 random numbers and assigns to image and cells
        cell.img.image = UIImage(named: "image \(arc4random_uniform(27))")
        return cell
    }
    
    
}
