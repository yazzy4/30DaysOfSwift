//
//  DayTwentySixViewController.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 5/5/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class DayTwentySixViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var movies = [MovieData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Popular Movies"
        tableView.dataSource = self
        tableView.delegate = self
        Day26DownloadManager().getPopularMovies { (movies) in
            if let movie = movies {
                self.movies = movie
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }


}

extension DayTwentySixViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! MovieCell
        cell.movie = movies[indexPath.row]
        return cell
    }
    
    
 
    
  
}
