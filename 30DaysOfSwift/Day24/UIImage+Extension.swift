//
//  UIImage+Extension.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 5/1/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

extension UIImage {
    static func imageAsync(urlString: String, completion: @escaping(UIImage?) -> Void)  {
        
        let url = URL(string: urlString)!
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard error == nil else {
                completion(nil)
                return
            }
            guard let data = data else {
                completion(nil)
                return
            }
            let img = UIImage(data: data)
            completion(img)
            
        }.resume()
    }
}
