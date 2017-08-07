//
//  GameScene.swift
//  MonSwifto
//
//  Created by Carolyn Yen on 3/11/17.
//  Copyright © 2017 frandz. All rights reserved.
//
import SpriteKit
import AVFoundation

class GameScene: SKScene, SKPhysicsContactDelegate {
    var musicPlayer = AVAudioPlayer()

    
    
    
    let cam = SKCameraNode()
    let ground = Ground()
    let player = Player()
    var screenCenterY = CGFloat()
    var screenCenterX = CGFloat()
    let initialPlayerPosition = CGPoint(x: -20, y: 180)
    var playerProgress = CGFloat()
    var backgrounds:[Background] = []
    var lastTouch: CGPoint? = nil
    var coinsCollected = 0
    let hud = HUD()
    let startText = SKLabelNode(fontNamed: "Papyrus")
    let fadeAnimation = SKAction.fadeAlpha(to: 1, duration: 3)
    let fadeoutAnimation = SKAction.fadeAlpha(to: 0, duration: 3)
    var status = false
    var treestatus = false
    
    override func didMove(to view: SKView) {
        //     Start the background music:
        if let musicPath = Bundle.main.path(forResource: "Sound/instant.mp3", ofType: nil) {
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
        self.anchorPoint = .zero
        self.camera = cam
        
        startText.text = "'I need to collect all the wand pieces.'"
        startText.position = CGPoint(x: 50, y: 380)
        startText.fontSize = 30
        startText.fontColor = SKColor.blue
        startText.alpha = 0
        self.addChild(startText)
        startText.run(fadeAnimation)
        
        let bee2 = Bee()
        bee2.position = CGPoint(x: 325, y: 325)
        self.addChild(bee2)
        let bee3 = Bee()
        bee3.position = CGPoint(x: 200, y: 325)
        self.addChild(bee3)
        
        let staff1 = Staff()
        staff1.position = CGPoint(x: 100, y: 325)
        self.addChild(staff1)
        
        let staff2 = Staff()
        staff2.texture = SKTextureAtlas(named:"Staff").textureNamed("staff2")
        staff2.position = CGPoint(x: 50, y: 325)
        self.addChild(staff2)
        
        let staff3 = Staff()
        staff3.texture = SKTextureAtlas(named:"Staff").textureNamed("staff3")
        staff3.position = CGPoint(x: 10, y: 325)
        self.addChild(staff3)
        
        let star = Star()
        star.position = CGPoint(x: 5, y: 152)
        self.addChild(star)
        
        let tree = Tree()
        tree.position = CGPoint(x: 500, y: 220)
        self.addChild(tree)
        
        let rock = Tree()
        rock.texture = SKTextureAtlas(named:"Tree").textureNamed("rock")
        rock.size = CGSize(width: 120, height: 100)
        rock.position = CGPoint(x: -1000, y: 140)
        self.addChild(rock)
        
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
        
        self.physicsWorld.contactDelegate = self
        self.addChild(self.camera!)
        self.camera!.zPosition = 50
        hud.createHudNodes(screenSize: self.size)
        self.camera!.addChild(hud)
        
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
    
    func didBegin(_ contact: SKPhysicsContact) {
        let otherBody:SKPhysicsBody
        let penguinMask = PhysicsCategory.penguin.rawValue | PhysicsCategory.damagedPenguin.rawValue
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
            if let coin = otherBody.node as? Staff {
                coin.collect()
                self.coinsCollected += coin.value
                print(self.coinsCollected)
                hud.setCoinCountDisplay(newCoinCount: self.coinsCollected)
            }
        case PhysicsCategory.powerup.rawValue:
            print("start the power-up")
        case PhysicsCategory.tree.rawValue:
            treestatus = false
            hud.showLabel(changetext: "'Teehee'", color: SKColor.red)
        default:
            print("Contact")
        }
      }
    
    func gameOver() {
        // Show the restart and main menu buttons:
        hud.showButtons()
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
            if nodeTouched.name == "restartGame" {
                self.view?.presentScene(GameScene(size: self.size), transition: .crossFade(withDuration: 0.6))
            }
            else if nodeTouched.name == "returnToMenu" {
                self.view?.presentScene(MenuScene(size: self.size), transition: .crossFade(withDuration: 0.6))
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
            if status == false {
                startText.run(fadeoutAnimation)
                status = true
            }
            if treestatus == false {
                hud.fadeLabel()
                treestatus = true
            }
            if let touch = lastTouch {
                if (touch.x - player.position.x) < 0 {
                    player.turnback()
                }
                else {
                    player.turnfront()
                }
                player.physicsBody?.velocity = CGVector(dx:(touch.x - player.position.x) * 1.2 , dy: 0)
            }
        }
    }
}

enum PhysicsCategory:UInt32 {
    case penguin = 1
    case damagedPenguin = 2
    case ground = 4
    case enemy = 8
    case coin = 16
    case powerup = 32
    case tree = 64
}




