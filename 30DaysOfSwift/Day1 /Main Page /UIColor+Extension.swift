//
//  UIColor+Extension.swift
//  100DaysOfSwift
//
//  Created by DevTechie Interactive on 9/5/18.
//  Copyright © 2018 Devtechie. All rights reserved.
//

import UIKit

extension UIColor {
    
    class func randomFlatColor() -> UIColor {
        
        let colors = [
            UIColor(red: 210/255, green: 77/255,  blue: 87/255,  alpha: 1.0),
            UIColor(red: 217/255, green: 30/255,  blue: 24/255,  alpha: 1.0),
            UIColor(red: 150/255, green: 40/255,  blue: 27/255,  alpha: 1.0),
            UIColor(red: 220/255, green: 198/255, blue: 224/255, alpha: 1.0),
            UIColor(red: 103/255, green: 65/255,  blue: 114/255, alpha: 1.0),
            UIColor(red: 68/255,  green: 108/255, blue: 179/255, alpha: 1.0),
            UIColor(red: 210/255, green: 77/255,  blue: 87/255,  alpha: 1.0),
            UIColor(red: 228/255, green: 241/255, blue: 254/255, alpha: 1.0),
            UIColor(red: 65/255,  green: 131/255, blue: 215/255, alpha: 1.0),
            UIColor(red: 89/255,  green: 171/255, blue: 227/255, alpha: 1.0),
            UIColor(red: 129/255, green: 207/255, blue: 224/255, alpha: 1.0),
            UIColor(red: 82/255,  green: 179/255, blue: 217/255, alpha: 1.0),
            UIColor(red: 197/255, green: 239/255, blue: 247/255, alpha: 1.0),
            UIColor(red: 34/255,  green: 167/255, blue: 240/255, alpha: 1.0),
            UIColor(red: 52/255,  green: 152/255, blue: 219/255, alpha: 1.0),
            UIColor(red: 44/255,  green: 62/255,  blue: 80/255,  alpha: 1.0),
            UIColor(red: 25/255,  green: 181/255, blue: 254/255, alpha: 1.0),
            UIColor(red: 51/255,  green: 110/255, blue: 123/255, alpha: 1.0),
            UIColor(red: 34/255,  green: 49/255,  blue: 63/255,  alpha: 1.0),
            UIColor(red: 30/255,  green: 139/255, blue: 195/255, alpha: 1.0),
            UIColor(red: 58/255,  green: 83/255,  blue: 155/255, alpha: 1.0),
            UIColor(red: 52/255,  green: 73/255,  blue: 94/255,  alpha: 1.0),
            UIColor(red: 103/255, green: 128/255, blue: 159/255, alpha: 1.0),
            UIColor(red: 37/255,  green: 116/255, blue: 169/255, alpha: 1.0),
            UIColor(red: 31/255,  green: 58/255,  blue: 147/255, alpha: 1.0),
            UIColor(red: 137/255, green: 196/255, blue: 244/255, alpha: 1.0),
            UIColor(red: 75/255,  green: 119/255, blue: 190/255, alpha: 1.0),
            UIColor(red: 92/255,  green: 151/255, blue: 191/255, alpha: 1.0),
            UIColor(red: 78/255,  green: 205/255, blue: 196/255, alpha: 1.0),
            UIColor(red: 162/255, green: 222/255, blue: 208/255, alpha: 1.0),
            UIColor(red: 135/255, green: 211/255, blue: 124/255, alpha: 1.0),
            UIColor(red: 144/255, green: 198/255, blue: 149/255, alpha: 1.0),
            UIColor(red: 38/255,  green: 166/255, blue: 91/255,  alpha: 1.0),
            UIColor(red: 3/255,   green: 201/255, blue: 169/255, alpha: 1.0),
            UIColor(red: 104/255, green: 195/255, blue: 163/255, alpha: 1.0),
            UIColor(red: 101/255, green: 198/255, blue: 187/255, alpha: 1.0),
            UIColor(red: 27/255,  green: 188/255, blue: 155/255, alpha: 1.0),
            UIColor(red: 27/255,  green: 163/255, blue: 156/255, alpha: 1.0),
            UIColor(red: 102/255, green: 204/255, blue: 153/255, alpha: 1.0),
            UIColor(red: 54/255,  green: 215/255, blue: 183/255, alpha: 1.0),
            UIColor(red: 200/255, green: 247/255, blue: 197/255, alpha: 1.0),
            UIColor(red: 134/255, green: 226/255, blue: 213/255, alpha: 1.0),
            UIColor(red: 46/255,  green: 204/255, blue: 113/255, alpha: 1.0),
            UIColor(red: 22/255,  green: 160/255, blue: 133/255, alpha: 1.0),
            UIColor(red: 63/255,  green: 195/255, blue: 128/255, alpha: 1.0),
            UIColor(red: 1/255,   green: 152/255, blue: 117/255, alpha: 1.0),
            UIColor(red: 3/255,   green: 166/255, blue: 120/255, alpha: 1.0),
            UIColor(red: 77/255,  green: 175/255, blue: 124/255, alpha: 1.0),
            UIColor(red: 42/255,  green: 187/255, blue: 155/255, alpha: 1.0),
            UIColor(red: 0/255,   green: 177/255, blue: 106/255, alpha: 1.0),
            UIColor(red: 30/255,  green: 130/255, blue: 76/255,  alpha: 1.0),
            UIColor(red: 4/255,   green: 147/255, blue: 114/255, alpha: 1.0),
            UIColor(red: 38/255,  green: 194/255, blue: 129/255, alpha: 1.0),
            UIColor(red: 253/255, green: 227/255, blue: 167/255, alpha: 1.0),
            UIColor(red: 248/255, green: 148/255, blue: 6/255,   alpha: 1.0),
            UIColor(red: 235/255, green: 149/255, blue: 50/255,  alpha: 1.0),
            UIColor(red: 232/255, green: 126/255, blue: 4/255,   alpha: 1.0),
            UIColor(red: 244/255, green: 178/255, blue: 80/255,  alpha: 1.0),
            UIColor(red: 242/255, green: 120/255, blue: 75/255,  alpha: 1.0),
            UIColor(red: 235/255, green: 151/255, blue: 78/255,  alpha: 1.0),
            UIColor(red: 254/255, green: 171/255, blue: 53/255,  alpha: 1.0),
            UIColor(red: 211/255, green: 84/255,  blue: 0/255,   alpha: 1.0),
            UIColor(red: 243/255, green: 156/255, blue: 18/255,  alpha: 1.0),
            UIColor(red: 249/255, green: 105/255, blue: 14/255,  alpha: 1.0),
            UIColor(red: 249/255, green: 191/255, blue: 59/255,  alpha: 1.0),
            UIColor(red: 242/255, green: 121/255, blue: 53/255,  alpha: 1.0),
            UIColor(red: 230/255, green: 126/255, blue: 34/255,  alpha: 1.0),
            UIColor(red: 236/255, green: 236/255, blue: 236/255, alpha: 1.0),
            UIColor(red: 108/255, green: 122/255, blue: 137/255, alpha: 1.0),
            UIColor(red: 210/255, green: 215/255, blue: 211/255, alpha: 1.0),
            UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1.0),
            UIColor(red: 189/255, green: 195/255, blue: 199/255, alpha: 1.0),
            UIColor(red: 236/255, green: 240/255, blue: 241/255, alpha: 1.0),
            UIColor(red: 149/255, green: 165/255, blue: 166/255, alpha: 1.0),
            UIColor(red: 218/255, green: 223/255, blue: 225/255, alpha: 1.0),
            UIColor(red: 171/255, green: 183/255, blue: 183/255, alpha: 1.0),
            UIColor(red: 242/255, green: 241/255, blue: 239/255, alpha: 1.0),
            UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1.0)
            ]
        
        return colors[Int(arc4random_uniform(UInt32(colors.count)))]
    }
}
