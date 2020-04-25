//
//  DaySeventeenViewController.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 4/23/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class DaySeventeenViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var data = Day17Model.populateMovies()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    


}

extension DaySeventeenViewController: UITableViewDataSource, UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return data[section].name
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].movies.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        let movie = data[indexPath.section].movies[indexPath.row]
        cell?.textLabel?.text = movie.movieTitle!
        cell?.detailTextLabel?.text = movie.movieCast!
        return cell!
    }
}
