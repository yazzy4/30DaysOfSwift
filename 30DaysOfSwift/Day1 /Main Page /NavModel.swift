//
//  NavModel.swift
//  100DaysOfSwift
//
//  Created by DevTechie Interactive on 9/5/18.
//  Copyright © 2018 Devtechie. All rights reserved.
//

import UIKit

class NavModel {
    var dayCount: Int
    var title: String
    var color: UIColor
    
    init(count: Int, title: String, color: UIColor) {
        self.dayCount = count
        self.title = title
        self.color = color
    }
    
    class func getDays() -> [NavModel] {
        var model = [NavModel]()
        for i in 1...30 {
            let nav = NavModel(count: i, title: "Day \(i)", color: UIColor.randomFlatColor())
            model.append(nav)
        }
        return model
    }
}


