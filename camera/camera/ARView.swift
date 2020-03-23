//
//  ViewController.swift
//  arkitWorkshop
//
//  Created by james luo on 8/25/19.
//  Copyright © 2019 james luo. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ARView: UIViewController, ARSCNViewDelegate {
    var originalSize = false
    var myNode = SCNNode()
    @IBAction func helloWorld(_ sender: UIButton) {
        originalSize = !originalSize
        if originalSize{
            self.myNode.scale = SCNVector3(0.1, 0.1, 0.5)
        }
        else{
            self.myNode.scale = SCNVector3(1,1,1)
        }
    }
        
    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true
        
        // Create a new scene
        
        
        //let scene = SCNScene(named: "art.scnassets/ship.scn")!
       // self.myNode = scene.rootNode
        
        // Set the scene to the view
        //sceneView.scene.rootNode.addChildNode(myNode)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }

    // MARK: - ARSCNViewDelegate
    
/*
    // Override to create and configure nodes for anchors added to the view's session.
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        let node = SCNNode()
     
        return node
    }
*/
    
    func session(_ session: ARSession, didFailWithError error: Error) {
        // Present an error message to the user
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        // Inform the user that the session has been interrupted, for example, by presenting an overlay
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
        
    }
}

