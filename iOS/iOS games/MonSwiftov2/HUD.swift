//
//  HUD.swift
//  MonSwifto
//
//  Created by Carolyn Yen on 3/11/17.
//  Copyright © 2017 frandz. All rights reserved.
//

import Foundation
import SpriteKit

class HUD: SKNode {
    var textureAtlas = SKTextureAtlas(named:"HUD")
    var coinAtlas = SKTextureAtlas(named: "Staff")
    var heartNodes:[SKSpriteNode] = []
    let coinCountText = SKLabelNode(text: "0 /3")
    let restartButton = SKSpriteNode()
    let menuButton = SKSpriteNode()
    let menuText = SKLabelNode(fontNamed: "Papyrus")
    let restartText = SKLabelNode(fontNamed: "Papyrus")
    let overText = SKLabelNode(fontNamed: "Papyrus")
    let backgroundImage = SKSpriteNode(imageNamed:"gameover")
    let playerText = SKLabelNode(fontNamed: "Papyrus")
    
    func createHudNodes(screenSize:CGSize) {
        let cameraOrigin = CGPoint(
            x: screenSize.width / 2,
            y: screenSize.height / 2)
        let coinIcon = SKSpriteNode(texture:
            coinAtlas.textureNamed("staff"))
        let coinPosition = CGPoint(x:
            -cameraOrigin.x + 23, y: cameraOrigin.y - 23)
        coinIcon.size = CGSize(width: 26, height: 26)
        coinIcon.position = coinPosition
        coinCountText.fontName = "AvenirNext-HeavyItalic"
        let coinTextPosition = CGPoint(x:
            -cameraOrigin.x + 41, y: coinPosition.y)
        coinCountText.position = coinTextPosition
        coinCountText.horizontalAlignmentMode =
            SKLabelHorizontalAlignmentMode.left
        coinCountText.verticalAlignmentMode = SKLabelVerticalAlignmentMode.center
        self.addChild(coinCountText)
        self.addChild(coinIcon)
        for index in 0 ..< 3 {
            let newHeartNode = SKSpriteNode(texture: textureAtlas.textureNamed("heart-full"))
            newHeartNode.size = CGSize (width: 26, height: 26)
            let xPos = -cameraOrigin.x + CGFloat(index * 28) + 33
            let yPos = cameraOrigin.y - 66
            newHeartNode.position = CGPoint(x: xPos, y: yPos)
            heartNodes.append(newHeartNode)
            self.addChild(newHeartNode)
        }
        // Add the restart and menu button textures to the nodes:
        restartButton.texture =
            textureAtlas.textureNamed("button-restart")
        menuButton.texture =
            textureAtlas.textureNamed("button-menu")
        // Assign node names to the buttons:
        restartButton.name = "restartGame"
        menuButton.name = "returnToMenu"
        menuButton.position = CGPoint(x: -140, y: 0)
        // Size the button nodes:
        restartButton.size = CGSize(width: 140, height: 140)
        menuButton.size = CGSize(width: 70, height: 70)
        
        menuText.text = "Menu"
        menuText.position = CGPoint(x: -140, y: -65)
        menuText.fontSize = 30
        menuText.fontColor = SKColor.red
        
        restartText.text = "Restart"
        restartText.position = CGPoint(x: 0, y: -100)
        restartText.fontSize = 30
        restartText.fontColor = SKColor.red
        
        overText.text = "Game Over"
        overText.position = CGPoint(x: -5, y: 140)
        overText.fontSize = 70
        overText.fontColor = SKColor.red
        
        playerText.text = "hi"
        playerText.position = CGPoint(x: -5, y: 150)
        playerText.fontSize = 40
        playerText.fontColor = SKColor.red
        
        backgroundImage.size = CGSize(width: 1024, height: 420)
        backgroundImage.zPosition = -1
    }
    
    func showButtons() {
        // Set the button alpha to 0:
        restartButton.alpha = 0
        menuButton.alpha = 0
        menuText.alpha = 0
        restartText.alpha = 0
        backgroundImage.alpha = 0
        overText.alpha = 0
        // Add the button nodes to the HUD:
        self.addChild(restartButton)
        self.addChild(menuButton)
        self.addChild(menuText)
        self.addChild(restartText)
        self.addChild(overText)
        self.addChild(backgroundImage)
        let fadeAnimation = SKAction.fadeAlpha(to: 1, duration: 0.4)
        let fadeAnimation2 = SKAction.fadeAlpha(to: 1, duration: 2)
        restartButton.run(fadeAnimation)
        menuButton.run(fadeAnimation)
        menuText.run(fadeAnimation)
        restartText.run(fadeAnimation)
        overText.run(fadeAnimation)
        backgroundImage.run(fadeAnimation2)
    }
    
    func showLabel(changetext: String, color: SKColor) {
        playerText.removeFromParent()
        playerText.alpha = 0
        playerText.text = changetext
        playerText.fontColor = color
        // Add the button nodes to the HUD:
        self.addChild(playerText)
        let fadeAnimation = SKAction.fadeAlpha(to: 1, duration: 2)
        playerText.run(fadeAnimation)
    }
    
    func fadeLabel() {
        let fadeoutAnimation = SKAction.fadeAlpha(to: 0, duration: 2)
        playerText.run(fadeoutAnimation)
    }
    
    func setCoinCountDisplay(newCoinCount:Int) {
        let formatter = NumberFormatter()
        let number = NSNumber(value: newCoinCount)
        formatter.minimumIntegerDigits = 1
        if let coinStr =
            formatter.string(from: number) {
            coinCountText.text = coinStr + "/3"
        }
    }
    
    func setHealthDisplay(newHealth:Int) {
        // Create a fade SKAction to fade lost hearts:
        let fadeAction = SKAction.fadeAlpha(to: 0.2, duration: 0.3)
        // Loop through each heart and update its status:
        for index in 0 ..< heartNodes.count {
            if index < newHealth {
                // This heart should be full red:
                heartNodes[index].alpha = 1
            }
            else {
                // This heart should be faded:
                heartNodes[index].run(fadeAction)
            }
        }
    }
                    
}
