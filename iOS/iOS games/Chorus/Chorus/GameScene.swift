//
//  GameScene.swift
//  Chorus
//
//  Created by Carolyn Yen on 3/27/17.
//  Copyright © 2017 frandz. All rights reserved.
//

import SpriteKit
import GameplayKit
import AVFoundation
class GameScene: SKScene, SKPhysicsContactDelegate {
    var mySprite = SKSpriteNode(color: .red, size:
    CGSize(width: 3, height: 0))
    var C3 = AVAudioPlayer()
    

//    override func sceneDidLoad() {
    override func didMove(to view: SKView) {
//        if let musicPath = Bundle.main.path(forResource:
//            "Sound/C3", ofType: "mp3") {
////            let url = URL(fileURLWithPath: musicPath)
//            do {
//                C3 = try AVAudioPlayer(contentsOf: musicPath as! URL)
////                C3.numberOfLoops = -1
//                C3.prepareToPlay()
//                C3.play()
//                
//            }
//            catch { /* Couldn't load music file */ }
//        }
        
        self.physicsWorld.contactDelegate = self
        self.physicsWorld.gravity = CGVector(dx: 0, dy: 0)
        mySprite = SKSpriteNode(color: .red, size:
            CGSize(width: 3, height: self.frame.height - 20))
        mySprite.position = CGPoint(x: -self.frame.width/2 + 10, y: 0)
//        mySprite.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 0.1, height: mySprite.size.height))
        mySprite.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: mySprite.size.width, height: mySprite.size.height))
        mySprite.physicsBody?.isDynamic = true
        mySprite.physicsBody?.affectedByGravity = false
        mySprite.physicsBody?.categoryBitMask = PhysicsCategory.line.rawValue
        mySprite.physicsBody?.collisionBitMask = PhysicsCategory.wall.rawValue
        mySprite.physicsBody?.contactTestBitMask = PhysicsCategory.wall.rawValue
        self.addChild(mySprite)
        mySprite.physicsBody?.velocity = CGVector(dx: 100, dy:0)
        
        let note = C3note()
        note.position = CGPoint(x: -self.frame.height/2 + 100, y: 10)
        note.color = .blue
        self.addChild(note)
        let wall = SKSpriteNode(color: .blue, size:
            CGSize(width: 2, height: self.frame.height))
//        wall.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 0.1, height: self.frame.height), center: CGPoint(x: 0, y: 0))
        wall.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: wall.size.width, height: wall.size.height))
        wall.position = CGPoint(x: 0, y: 0)
        
        
        wall.physicsBody?.isDynamic = true
//        wall.physicsBody?.isResting = true
//        wall.physicsBody?.pinned = false
        wall.physicsBody?.affectedByGravity = false
//        wall.physicsBody = SKPhysicsBody(edgeFrom: CGPoint(x:self.size.width/2, y:0), to: CGPoint(x:self.size.width/2, y:self.size.height))
        wall.physicsBody?.categoryBitMask = PhysicsCategory.wall.rawValue
//        wall.physicsBody?.collisionBitMask = PhysicsCategory.line.rawValue
//        wall.physicsBody?.contactTestBitMask = PhysicsCategory.line.rawValue
        wall.position = CGPoint(x: 0, y: 0)
        self.addChild(wall)
        
    
        
    }
    override func update(_ currentTime: TimeInterval) {
    }
    
    override func didSimulatePhysics() {}
    
    func didBegin(_ contact: SKPhysicsContact) {
        let otherBody : SKPhysicsBody
        let lineMask = PhysicsCategory.line.rawValue
        if (contact.bodyA.categoryBitMask & lineMask) > 0 {
            otherBody = contact.bodyB
        }
            
        else {
            otherBody = contact.bodyA
        }
        
        switch otherBody.categoryBitMask {
        case PhysicsCategory.wall.rawValue:
            print("hit the wall")
        case PhysicsCategory.note.rawValue:
            print("hit the note")
            if let coin = otherBody.node as? C3note {
                coin.playsound()
            
            }
            
        default:
            print("no contact")
        }
    }
}


enum PhysicsCategory:UInt32 {
    case line = 1
    case wall = 2
    case ground = 4
    case note = 8
}

