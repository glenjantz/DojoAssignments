//
//  Player.swift
//  Monswiftov1
//
//  Created by Glen Jantz on 3/11/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import Foundation
import SpriteKit
class Player : SKSpriteNode, GameSprite {
    var initialSize = CGSize(width: 100, height: 100)
    var textureAtlas:SKTextureAtlas =
        SKTextureAtlas(named:"RedHood")
    var flyAnimation = SKAction()
    var soarAnimation = SKAction()
    var flapping = false
    let maxFlappingForce:CGFloat = 35000
    let maxHeight:CGFloat = 1000
    
    init() {
        
        super.init(texture: nil, color: .clear, size:
            initialSize)
        createAnimations()
        
        self.run(soarAnimation, withKey: "soarAnimation")
        let bodyTexture = textureAtlas.textureNamed("Idle_000")
        self.physicsBody = SKPhysicsBody(
            texture: bodyTexture, size: self.size)
        self.physicsBody?.linearDamping = 0.9
        self.physicsBody?.mass = 45
        self.physicsBody?.allowsRotation = false
    }
    
    func createAnimations() {
        let flyFrames:[SKTexture] = [
            textureAtlas.textureNamed("Walk_000"),
            textureAtlas.textureNamed("Walk_001"),
            textureAtlas.textureNamed("Walk_002"),
            textureAtlas.textureNamed("Walk_003"),
            textureAtlas.textureNamed("Walk_004")]
        let flyAction = SKAction.animate(with: flyFrames,
                                         timePerFrame: 0.23)
        flyAnimation = SKAction.group([
            SKAction.repeatForever(flyAction)
            ])
        let soarFrames:[SKTexture] = [
            textureAtlas.textureNamed("Idle_000"),
            textureAtlas.textureNamed("Idle_001"),
            textureAtlas.textureNamed("Idle_002"),
            textureAtlas.textureNamed("Idle_003"),
            textureAtlas.textureNamed("Idle_004")]
        let soarAction = SKAction.animate(with: soarFrames,
                                          timePerFrame: 0.23)
        soarAnimation = SKAction.group([
            SKAction.repeatForever(soarAction)
            ])
    }
    
    func startFlapping() {
        self.removeAction(forKey: "soarAnimation")
        self.run(flyAnimation, withKey: "flapAnimation")
        self.flapping = true
    }
    
    func stopFlapping() {
        self.removeAction(forKey: "flapAnimation")
        self.run(soarAnimation, withKey: "soarAnimation")
        self.flapping = false
    }
    
    func turnback() {
        let flipnegative = SKAction.scaleX(to: -1, duration:0)
        self.run(flipnegative)
    }
    
    func turnfront(){
        let flippositive = SKAction.scaleX(to: 1, duration:0)
        self.run(flippositive)
    }
    
    
    func onTap() {
    }
    
    func update(lasttouch: CGPoint) {
        if self.flapping {
            if lasttouch.x <= self.position.x {
                self.physicsBody?.applyForce(CGVector(dx: -maxFlappingForce, dy:
                    0))
            }
            if lasttouch.x > self.position.x {
                self.physicsBody?.applyForce(CGVector(dx: maxFlappingForce, dy:
                    0))
            }
        }
    }
    
    required init? (coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
