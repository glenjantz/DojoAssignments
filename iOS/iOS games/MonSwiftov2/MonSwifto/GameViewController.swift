//
//  GameViewController.swift
//  MonSwifto
//
//  Created by Carolyn Yen on 3/11/17.
//  Copyright © 2017 frandz. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit
import AVFoundation

class GameViewController: UIViewController {
//    var musicPlayer = AVAudioPlayer()
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        // Build the menu scene:
        let menuScene = MenuScene()
        let skView = self.view as! SKView
        // Ignore drawing order of child nodes
        // (This increases performance)
        skView.ignoresSiblingOrder = true
        menuScene.size = view.bounds.size
        skView.presentScene(menuScene)
        // Start the background music:
//        if let musicPath = Bundle.main.path(forResource: "Sound/BackgroundMusic.m4a", ofType: nil) {
//            let url = URL(fileURLWithPath: musicPath)
//            do {
//                musicPlayer = try AVAudioPlayer(contentsOf: url)
//                musicPlayer.numberOfLoops = -1
//                musicPlayer.prepareToPlay()
//                musicPlayer.play()
//            }
//            catch { /* Couldn't load music file */ }
//        }
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
