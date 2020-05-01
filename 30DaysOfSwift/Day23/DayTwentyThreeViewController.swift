//
//  DayTwentyThreeViewController.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 5/1/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class DayTwentyThreeViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "CIFilter & GCD"
    }
    
    @IBAction func didTapProcessImage(_ sender: UIButton){
        
        let image = CIImage(cgImage: imageView.image!.cgImage!)
        
        self.applyFilter(image)
    }
    
    func applyFilter(_ image: CIImage){
        DispatchQueue.global().async {
            sleep(5)
            
            let filter = CIFilter(name: "CISepiaTone")!
            filter.setDefaults()
            filter.setValue(image, forKey: kCIInputImageKey)
//            filter.setValue(0.5, forKey: kCIInputIntensityKey)
            
            let context = CIContext(options: nil)
            let imageRefrence = context.createCGImage(filter.outputImage!, from: image.extent)
            DispatchQueue.main.async {
                self.imageView.image = UIImage(cgImage: imageRefrence!)
            }
            
        }
    }

}
