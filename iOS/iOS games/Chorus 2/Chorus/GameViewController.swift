//
//  GameViewController.swift
//  Chorus
//
//  Created by Carolyn Yen on 3/27/17.
//  Copyright © 2017 frandz. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    var delegate: NavBarDelegate?
    
    @IBAction func cancelPressed(_ sender: UIBarButtonItem) {
        if let view = self.view as! SKView? {
            view.isPaused = true
        }
    }
    
    @IBAction func startPressed(_ sender: UIBarButtonItem) {
        if let view = self.view as! SKView? {
            view.isPaused = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let scene = GKScene(fileNamed: "GameScene") {
            if let sceneNode = scene.rootNode as! GameScene? {
                sceneNode.scaleMode = .aspectFill
                if let view = self.view as! SKView? {
                    view.presentScene(sceneNode)
                    view.ignoresSiblingOrder = false
                    view.showsFPS = true
                    view.showsNodeCount = true
                }
            }
        }
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscape
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
