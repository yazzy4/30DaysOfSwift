//
//  DayTwentyEightViewController.swift
//  30DaysOfSwift
//
//  Created by Yaz Burrell on 5/6/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit
import ARKit

class DayTwentyEightViewController: UIViewController {
    
    @IBOutlet weak var sceneView: ARSCNView!

    override func viewDidLoad() {
        super.viewDidLoad()
        addCdube()
        title = "ARKit"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let config = ARWorldTrackingConfiguration()
        sceneView.session.run(config)
    }

    override func viewWillDisappear(_ animated: Bool) {
        sceneView.session.pause()
        super.viewWillDisappear(animated)
    }

    func addCdube(){
        let cube = SCNBox(width: 0.1, height: 0.1, length: 0.1, chamferRadius: 0.001)
        let node = SCNNode()
        node.geometry = cube
        node.position = SCNVector3(x: 0, y: 0, z: -0.05)
        let scene = SCNScene()
        scene.rootNode.addChildNode(node)
        sceneView.scene = scene
    }
}
