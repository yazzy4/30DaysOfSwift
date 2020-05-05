//
//  MovieCell.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 5/5/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    var movie: MovieData?{
        didSet{
            if let movie = movie {
                UIImage.imageAsync(urlString: "https://image.tmdb.org/t/p/w500\(movie.poster_path!)") { (image) in
                    DispatchQueue.main.async {
                        self.imageV.image = image
                    }
                }
                movieTitle.text = movie.title
                movieDescription.text = movie.overview
            }
        }
    }
    
    @IBOutlet weak var imageV: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
