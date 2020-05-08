//
//  DayThirtyViewController.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 5/7/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit
import ImageIO
import CoreML
import Vision

class DayThirtyViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var cameraButton: UIButton!
    @IBOutlet weak var classificationLabel: UILabel!
    
    lazy var classRequest: VNCoreMLRequest = {
        do{
            let model = try VNCoreMLModel(for: MobileNet().model)
            let request = VNCoreMLRequest(model: model) { (request, error) in
                //process classification with function
            }
            request.imageCropAndScaleOption = .centerCrop
            return request
            
        } catch {
            fatalError("\(error)")
        }
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    



}

extension CGImagePropertyOrientation {
    init(_ orientation: UIImage.Orientation){
        switch orientation {
        case .up:
            self = .up
        case .upMirrored:
            self = .upMirrored
        case .down:
            self = .down
        case .downMirrored:
            self = .downMirrored
        case .left:
            self = .left
        case .leftMirrored:
            self = .leftMirrored
        case .right:
            self = .right
        case .rightMirrored:
            self = .rightMirrored
      
        }
    }
}
