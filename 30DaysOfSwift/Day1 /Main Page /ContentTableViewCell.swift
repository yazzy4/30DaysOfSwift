//
//  ContentTableViewCell.swift
//  100DaysOfSwift
//
//  Created by DevTechie Interactive on 9/4/18.
//  Copyright © 2018 Devtechie. All rights reserved.
//

import UIKit

class ContentTableViewCell: UITableViewCell {
    var data: NavModel? {
        didSet {
            if let data = data {
                self.dayCountLabel.text = "\(data.dayCount)"
                self.dayDescLabel.text = data.title
                self.bulletView.backgroundColor = data.color
            }
        }
    }
    @IBOutlet weak var dayDescLabel: UILabel!
    @IBOutlet weak var dayCountLabel: UILabel!
    
    @IBOutlet weak var bulletView: UIView!
    @IBOutlet weak var baseView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        [baseView, bulletView].forEach { (v) in
            v?.layer.cornerRadius = 37.5
            v?.layer.masksToBounds = true
        }
    
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
