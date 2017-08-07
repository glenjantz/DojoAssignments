//
//  GameScene.swift
//  Monswiftov1
//
//  Created by Glen Jantz on 3/11/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import SpriteKit
class GameScene: SKScene {
    let cam = SKCameraNode()
    let ground = Ground()
    let player = Player()
    var screenCenterY = CGFloat()
    var screenCenterX = CGFloat()
    let initialPlayerPosition = CGPoint(x: 150, y: 250)
    var playerProgress = CGFloat()
    var backgrounds:[Background] = []
    var lastTouch: CGPoint? = nil
    
    override func didMove(to view: SKView) {
        screenCenterY = self.size.height / 2
        screenCenterX = self.size.width / 2
        self.physicsWorld.gravity = CGVector(dx: 0, dy: -5)
        self.anchorPoint = .zero
        self.camera = cam
        
        let bee2 = Bee()
        bee2.position = CGPoint(x: 325, y: 325)
        self.addChild(bee2)
        let bee3 = Bee()
        bee3.position = CGPoint(x: 200, y: 325)
        self.addChild(bee3)
        
        ground.position = CGPoint(x: -self.size.width * 2, y: 100)
        ground.size = CGSize(width: self.size.width * 6, height: 0)
        ground.createChildren()
        self.addChild(ground)
        
        player.position = initialPlayerPosition
        self.addChild(player)
        
        for _ in 0..<3 {
            backgrounds.append(Background())
        }
        backgrounds[0].spawn(parentNode: self,
                             imageName: "forest", zPosition: -5,
                             movementMultiplier: 0.75)
    }
    
    override func didSimulatePhysics() {
        let cameraYPos = screenCenterY
        cam.yScale = 1
        cam.xScale = 1
        self.camera!.position = CGPoint(x: player.position.x,
                                        y: cameraYPos)
        
        playerProgress = player.position.x -
            initialPlayerPosition.x
        ground.checkForReposition(playerProgress: playerProgress)
        
        for background in self.backgrounds {
            background.updatePosition(playerProgress:
                playerProgress)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>,
                               with event: UIEvent?) {
        for touch in (touches) {
            let location = touch.location(in: self)
            let nodeTouched = atPoint(location)
            lastTouch = location
            if let gameSprite = nodeTouched as? GameSprite {
                gameSprite.onTap()
            }
        }
        player.startFlapping()
    }
    
    override func touchesEnded(_ touches: Set<UITouch>,
                               with event: UIEvent?) {
        player.stopFlapping()
    }
    override func touchesCancelled(_ touches: Set<UITouch>,
                                   with event: UIEvent?) {
        player.stopFlapping()
    }
    
    override func update(_ currentTime: TimeInterval) {
        if player.flapping {
            if let touch = lastTouch {
                if (touch.x - player.position.x) < 0 {
                    player.turnback()
                }
                else {
                    player.turnfront()
                }
                player.physicsBody?.velocity = CGVector(dx:(touch.x - player.position.x) * 2 , dy: 0)
            }
        }
        
        //            let now = self.camera!.position.x
        //            if lastTouch.x <= now {
        //                player.physicsBody?.applyForce(CGVector(dx: -35000, dy:
        //                    0))
        //            }
        //            if lastTouch.x > now {
        //                player.physicsBody?.applyForce(CGVector(dx: 35000, dy:
        //                    0))
        //            }
    }
}


