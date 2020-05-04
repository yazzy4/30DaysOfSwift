//
//  DayTwentyFourViewController.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 5/1/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class DayTwentyFourViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Extensions + Networking"

    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
         //image loads here
        UIImage.imageAsync(urlString: "https://starwars.fandom.com/wiki/Star_Wars?file=Star-wars-logo-new-tall.jpg") { (image) in
            DispatchQueue.main.async {
                self.imageView.image = image
            }
        }
    }

}
