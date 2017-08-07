//
//  BossScene.swift
//  MonSwifto
//
//  Created by Carolyn Yen on 3/12/17.
//  Copyright © 2017 frandz. All rights reserved.
//

import Foundation
import SpriteKit
import AVFoundation
class BossScene: SKScene, SKPhysicsContactDelegate {
    var musicPlayer = AVAudioPlayer()
    let cam = SKCameraNode()
    let ground = Ground()
    let player = Player()
    var screenCenterY = CGFloat()
    var screenCenterX = CGFloat()
    let initialPlayerPosition = CGPoint(x: -20, y: 240)
    var playerProgress = CGFloat()
    var backgrounds:[Background] = []
    var lastTouch: CGPoint? = nil
    var coinsCollected = 3
    let hud = HUD()
    let fadeAnimation = SKAction.fadeAlpha(to: 1, duration: 3)
    let fadeoutAnimation = SKAction.fadeAlpha(to: 0, duration: 3)
    var status = true
    
    let textureAtlas:SKTextureAtlas = SKTextureAtlas(named:"Arrows")
    let GravityButton = SKSpriteNode()
    var upstatus = false
    var downstatus = true
    var leftstatus = false
    var rightstatus = false
    
    override func didMove(to view: SKView) {
        if let musicPath = Bundle.main.path(forResource: "Sound/nightsky.mp3", ofType: nil) {
            let url = URL(fileURLWithPath: musicPath)
            do {
                musicPlayer = try AVAudioPlayer(contentsOf: url)
                musicPlayer.numberOfLoops = -1
                musicPlayer.prepareToPlay()
                musicPlayer.play()
            }
            catch { /* Couldn't load music file */ }
            
        }
        
        
        
        
        
        
        screenCenterY = self.size.height / 2
        screenCenterX = self.size.width / 2
        self.physicsWorld.gravity = CGVector(dx: 0, dy: -5)
        self.camera = cam
        self.anchorPoint = .zero
        
        
//        let bee2 = Bee()
//        bee2.position = CGPoint(x: 325, y: 225)
//        self.addChild(bee2)
//        let bee3 = Bee()
//        bee3.position = CGPoint(x: 200, y: 225)
//        self.addChild(bee3)
        
        ground.position = CGPoint(x: -self.size.width * 2, y: 0)
        ground.size = CGSize(width: self.size.width * 6, height: 0)
        ground.createChildren()
        self.addChild(ground)
        
        let leftwall = SKNode()
        leftwall.physicsBody?.collisionBitMask = PhysicsCategory.penguin.rawValue
        leftwall.physicsBody = SKPhysicsBody(edgeFrom: CGPoint(x:-370, y:0), to: CGPoint(x:-370, y:900))
        leftwall.physicsBody?.friction = 0.9
        leftwall.physicsBody?.affectedByGravity = true
        leftwall.physicsBody?.isDynamic = false
        leftwall.physicsBody?.allowsRotation = false
        leftwall.physicsBody?.mass = 500
        leftwall.position = CGPoint(x:0, y:0)
        self.addChild(leftwall)
        
        let rightwall = SKNode()
        rightwall.physicsBody?.collisionBitMask = PhysicsCategory.penguin.rawValue
        rightwall.physicsBody = SKPhysicsBody(edgeFrom: CGPoint(x:370, y:0), to: CGPoint(x:370, y:900))
        rightwall.physicsBody?.friction = 0.9
        rightwall.physicsBody?.affectedByGravity = true
        rightwall.physicsBody?.isDynamic = false
        rightwall.physicsBody?.allowsRotation = false
        rightwall.physicsBody?.mass = 500
        rightwall.position = CGPoint(x:0, y:0)
        self.addChild(rightwall)
        
        let ceiling = SKNode()
        ceiling.physicsBody?.collisionBitMask = PhysicsCategory.penguin.rawValue
        ceiling.physicsBody = SKPhysicsBody(edgeFrom: CGPoint(x:-500, y:415), to: CGPoint(x:1000, y:415))
        ceiling.physicsBody?.friction = 0.9
        ceiling.physicsBody?.affectedByGravity = true
        ceiling.physicsBody?.isDynamic = false
        ceiling.physicsBody?.allowsRotation = false
        ceiling.physicsBody?.mass = 500
        ceiling.position = CGPoint(x:0, y:0)
        self.addChild(ceiling)
        
        player.position = initialPlayerPosition
        self.addChild(player)
        
        for _ in 0..<3 {
            backgrounds.append(Background())
        }
        
        backgrounds[0].backgroundSize = CGSize(width: 1024, height: 768)
        backgrounds[0].position = CGPoint(x: 0, y: 0)
        backgrounds[0].zPosition = -5
        backgrounds[0].movementMultiplier = 0.75
        self.addChild(backgrounds[0])
        let texture = backgrounds[0].textureAtlas.textureNamed("darkforest")
        let newBGNode = SKSpriteNode(texture: texture)
        newBGNode.size = CGSize(width: 754, height: 868)
        backgrounds[0].addChild(newBGNode)

        self.physicsWorld.contactDelegate = self
        self.addChild(self.camera!)
        self.camera!.zPosition = 50
        hud.createHudNodes(screenSize: self.size)
        self.camera!.addChild(hud)
        hud.setCoinCountDisplay(newCoinCount: 3)
        
        hud.showLabel(changetext: "'I went to another world.'", changetext2: "", color: SKColor.red, size: 40)
        status = false
    
        hud.addGravity()
    }
    
    override func didSimulatePhysics() {
        let cameraYPos = screenCenterY
        cam.yScale = 1
        cam.xScale = 1
        self.camera!.position = CGPoint(x: 0, y: cameraYPos)
        playerProgress = player.position.x -
            initialPlayerPosition.x
        ground.checkForReposition(playerProgress: playerProgress)
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        let otherBody:SKPhysicsBody
        let penguinMask = PhysicsCategory.penguin.rawValue |
            PhysicsCategory.damagedPenguin.rawValue
        if (contact.bodyA.categoryBitMask & penguinMask) > 0 {
            otherBody = contact.bodyB
        }
        else {
            otherBody = contact.bodyA
        }
        switch otherBody.categoryBitMask {
        case PhysicsCategory.ground.rawValue:
            print("hit the ground")
        case PhysicsCategory.enemy.rawValue:
            print("take damage")
            player.takeDamage()
            hud.setHealthDisplay(newHealth: player.health)
        case PhysicsCategory.coin.rawValue:
            print("coin!!!")
        case PhysicsCategory.powerup.rawValue:
            print("start the power-up")
        case PhysicsCategory.rock.rawValue:
            print("rock")
        case PhysicsCategory.tree.rawValue:
            print("tree")
        default:
            print("Contact")
        }
    }
    
    func gameOver() {
        hud.showButtons()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>,
                               with event: UIEvent?) {
        for touch in (touches) {
            let location = touch.location(in: self)
            let nodeTouched = atPoint(location)
            if (nodeTouched.name != "Up") && (nodeTouched.name != "Left") && (nodeTouched.name != "Right") && (nodeTouched.name != "Down"){
                lastTouch = location
            }
            if let gameSprite = nodeTouched as? GameSprite {
                gameSprite.onTap()
            }
            if nodeTouched.name == "restartGame" {
                self.view?.presentScene(GameScene(size: self.size), transition: .crossFade(withDuration: 0.6))
            }
            else if nodeTouched.name == "returnToMenu" {
                self.view?.presentScene(MenuScene(size: self.size), transition: .crossFade(withDuration: 0.6))
            }
            else if nodeTouched.name == "Up" {
                if upstatus == false && downstatus == true{
                    player.turnup()
                    let rotateaction = SKAction.rotate(byAngle: CGFloat.pi, duration: 1)
                    self.camera!.run(rotateaction)
                    upstatus = true
                    downstatus = false
                }
                if leftstatus == true {
                    let flipnegative = SKAction.rotate(byAngle: CGFloat.pi/2, duration:1)
                    player.run(flipnegative)
                    leftstatus = false
                    upstatus = true
                    downstatus = false
                }
                if rightstatus == true {
                    let flipnegative = SKAction.rotate(byAngle: -CGFloat.pi/2, duration:1)
                    player.run(flipnegative)
                    rightstatus = false
                    upstatus = true
                    downstatus = false
                }
                self.physicsWorld.gravity = CGVector(dx: 0, dy: 4)
                print("up")
            }
            else if nodeTouched.name == "Left" {
                if leftstatus != true {
                if upstatus == true && downstatus == false {
                    let rotateaction = SKAction.rotate(byAngle: CGFloat.pi, duration: 1)
                    self.camera!.run(rotateaction)
                    let flipnegative = SKAction.rotate(byAngle: CGFloat.pi, duration:1)
                    player.run(flipnegative)
                    leftstatus = true
                    upstatus = false
                    downstatus = true
                }
                if downstatus == true && upstatus == false {
                    print("2")
                    let flipnegative = SKAction.rotate(byAngle: -CGFloat.pi/2, duration:1)
                    player.run(flipnegative)
                    leftstatus = true
                }
                if rightstatus == true && upstatus == false {
                    print("3")
                    let flipnegative = SKAction.rotate(byAngle: -CGFloat.pi/2, duration:1)
                    player.run(flipnegative)
                    rightstatus = false
                    leftstatus = true
                }
                print("left")
                self.physicsWorld.gravity = CGVector(dx: -4, dy: 0)
                }
            }
            else if nodeTouched.name == "Right" {
                if rightstatus != true {
                if upstatus == true && downstatus == false {
                    let rotateaction = SKAction.rotate(byAngle: CGFloat.pi, duration: 1)
                    self.camera!.run(rotateaction)
                    let flipnegative = SKAction.rotate(byAngle: CGFloat.pi, duration:1)
                    player.run(flipnegative)
                    rightstatus = true
                    upstatus = false
                    downstatus = true
                }
                if downstatus == true && upstatus == false {
                    let flipnegative = SKAction.rotate(byAngle: CGFloat.pi/2, duration:1)
                    player.run(flipnegative)
                    rightstatus = true
                }
                if leftstatus == true && upstatus == false {
                    let flipnegative = SKAction.rotate(byAngle: CGFloat.pi/2, duration:1)
                    player.run(flipnegative)
                    leftstatus = false
                    rightstatus = true
                }
                print("right")
                self.physicsWorld.gravity = CGVector(dx: 4, dy: 0)
                }
            }
            else if nodeTouched.name == "Down" {
                if downstatus == false && upstatus == true{
                    player.turnup()
                    let rotateaction = SKAction.rotate(byAngle: CGFloat.pi, duration: 1)
                    self.camera!.run(rotateaction)
                    downstatus = true
                }
                if leftstatus == true {
                    let flipnegative = SKAction.rotate(byAngle: CGFloat.pi/2, duration:1)
                    player.run(flipnegative)
                    leftstatus = false
                    downstatus = true
                }
                if rightstatus == true {
                    let flipnegative = SKAction.rotate(byAngle: -CGFloat.pi/2, duration:1)
                    player.run(flipnegative)
                    rightstatus = false
                    downstatus = true
                }
                self.physicsWorld.gravity = CGVector(dx: 0, dy: -4)
                upstatus = false
                print("down")
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
            if leftstatus == true {
                if let touch = lastTouch {
                    if (touch.y - player.position.y) < 0 {
                        let flipnegative = SKAction.scaleX(to: 1, duration:0)
                        player.run(flipnegative)
                    }
                    else    {
                        let flipnegative = SKAction.scaleX(to: -1, duration:0)
                        player.run(flipnegative)
                    }
                    player.physicsBody?.velocity = CGVector(dx:0, dy:(touch.y - player.position.y)*1.2)
                }
            }
            else if rightstatus == true {
                if let touch = lastTouch {
                    if (touch.y - player.position.y) < 0 {
                        let flipnegative = SKAction.scaleX(to: -1, duration:0)
                        player.run(flipnegative)
                    }
                    else    {
                        let flipnegative = SKAction.scaleX(to: 1, duration:0)
                        player.run(flipnegative)
                    }
                    player.physicsBody?.velocity = CGVector(dx:0, dy:(touch.y - player.position.y)*1.2)
                }
            }
            else if upstatus == true {
                if let touch = lastTouch {
                    if (touch.x - player.position.x) < 0 {
                        player.turnback2()
                    }
                    else    {
                        player.turnfront2()
                    }
                    player.physicsBody?.velocity = CGVector(dx:(touch.x - player.position.x) * 1.2 , dy: 0)
                }
            }
            else {
                if let touch = lastTouch {
                    if (touch.x - player.position.x) < 0 {
                        player.turnback()
                    }
                    else    {
                        player.turnfront()
                    }
                    player.physicsBody?.velocity = CGVector(dx:(touch.x - player.position.x) * 1.2 , dy: 0)
                }
                if status == false {
                    hud.fadeLabel()
                    status = true
                }
            }
        }
    }
}










