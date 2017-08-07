//
//  HUD.swift
//  Chorus
//
//  Created by Carolyn Yen on 3/29/17.
//  Copyright © 2017 frandz. All rights reserved.
//

import Foundation
import SpriteKit
import UIKit

class HUD: SKNode {
    var StartButton = SKSpriteNode()
    var CancelButton = SKSpriteNode()
    var RestartButton = SKSpriteNode()
    var textureAtlas:SKTextureAtlas = SKTextureAtlas(named:"PlayButtons")
    var status = true
    var C3Note = SKSpriteNode()
    var CSNote = SKSpriteNode()
    var DNote =  SKSpriteNode()
    var DSNote = SKSpriteNode()
    var ENote =  SKSpriteNode()
    var FNote =  SKSpriteNode()
    var FSNote = SKSpriteNode()
    var GNote =  SKSpriteNode()
    var GSNote = SKSpriteNode()
    var ANote =  SKSpriteNode()
    var ASNote = SKSpriteNode()
    var BNote =  SKSpriteNode()
    var C4Note = SKSpriteNode()
    var textureAtlas2: SKTextureAtlas = SKTextureAtlas(named:"PianoKeys")
    
    
    func createHudNodes(screenSize:CGSize) {
        let cameraOrigin = CGPoint(
            x: screenSize.width / 2,
            y: screenSize.height / 2)

        StartButton = SKSpriteNode(texture: textureAtlas.textureNamed("start"), color: .clear, size: CGSize(width: 35, height: 35))
        let coinPosition = CGPoint(x: -cameraOrigin.x + 60, y: cameraOrigin.y - 23)
        StartButton.position = coinPosition
        StartButton.alpha = 1
        StartButton.name = "start"
        self.addChild(StartButton)
        
        RestartButton = SKSpriteNode(texture: textureAtlas.textureNamed("restart"), color: .clear, size: CGSize(width: 35, height: 35))
        let coinPosition2 = CGPoint(x: -cameraOrigin.x + 23, y: cameraOrigin.y - 23)
        RestartButton.position = coinPosition2
        RestartButton.alpha = 1
        RestartButton.name = "restart"
        self.addChild(RestartButton)
        
        frame.height - arr[ind]*buttonheight
        
        
        //notes
        C3Note = SKSpriteNode(texture: textureAtlas2.textureNamed("white"), color: .clear, size: CGSize(width: 80 , height: (screenSize.height - 58)/13))
        let coinPosition3 = CGPoint(x: -cameraOrigin.x + 40, y: cameraOrigin.y - 400)
        C3Note.position = coinPosition3
        C3Note.alpha = 1
        C3Note.name = "C3"
        self.addChild(C3Note)
        
        CSNote = SKSpriteNode(texture: textureAtlas2.textureNamed("black"), color: .clear, size: CGSize(width: 80 , height: (screenSize.height - 58)/13))
        let coinPosition4 = CGPoint(x: -cameraOrigin.x + 40, y: cameraOrigin.y - 372)
        CSNote.position = coinPosition4
        CSNote.alpha = 1
        CSNote.name = "CS"
        self.addChild(CSNote)
        
        DNote = SKSpriteNode(texture: textureAtlas2.textureNamed("white"), color: .clear, size: CGSize(width: 80 , height: (screenSize.height - 58)/13))
        let coinPosition5 = CGPoint(x: -cameraOrigin.x + 40, y: cameraOrigin.y - 344)
        DNote.position = coinPosition5
        DNote.alpha = 1
        DNote.name = "D"
        self.addChild(DNote)
        
        DSNote = SKSpriteNode(texture: textureAtlas2.textureNamed("black"), color: .clear, size: CGSize(width: 80 , height: (screenSize.height - 58)/13))
        let coinPosition6 = CGPoint(x: -cameraOrigin.x + 40, y: cameraOrigin.y - 316)
        DSNote.position = coinPosition6
        DSNote.alpha = 1
        DSNote.name = "DS"
        self.addChild(DSNote)
        
        ENote = SKSpriteNode(texture: textureAtlas2.textureNamed("white"), color: .clear, size: CGSize(width: 80 , height: (screenSize.height - 58)/13))
        let coinPosition7 = CGPoint(x: -cameraOrigin.x + 40, y: cameraOrigin.y - 288)
        ENote.position = coinPosition7
        ENote.alpha = 1
        ENote.name = "E"
        self.addChild(ENote)
        
        FNote = SKSpriteNode(texture: textureAtlas2.textureNamed("white"), color: .clear, size: CGSize(width: 80 , height: (screenSize.height - 58)/13))
        let coinPosition8 = CGPoint(x: -cameraOrigin.x + 40, y: cameraOrigin.y - 260)
        FNote.position = coinPosition8
        FNote.alpha = 1
        FNote.name = "F"
        self.addChild(FNote)
        
        FSNote = SKSpriteNode(texture: textureAtlas2.textureNamed("black"), color: .clear, size: CGSize(width: 80 , height: (screenSize.height - 58)/13))
        let coinPosition9 = CGPoint(x: -cameraOrigin.x + 40, y: cameraOrigin.y - 232)
        FSNote.position = coinPosition9
        FSNote.alpha = 1
        FSNote.name = "FS"
        self.addChild(FSNote)
        
        GNote = SKSpriteNode(texture: textureAtlas2.textureNamed("white"), color: .clear, size: CGSize(width: 80 , height: (screenSize.height - 58)/13))
        let coinPosition10 = CGPoint(x: -cameraOrigin.x + 40, y: cameraOrigin.y - 204)
        GNote.position = coinPosition10
        GNote.alpha = 1
        GNote.name = "G"
        self.addChild(GNote)
        
        GSNote = SKSpriteNode(texture: textureAtlas2.textureNamed("black"), color: .clear, size: CGSize(width: 80 , height: (screenSize.height - 58)/13))
        let coinPosition11 = CGPoint(x: -cameraOrigin.x + 40, y: cameraOrigin.y - 176)
        GSNote.position = coinPosition11
        GSNote.alpha = 1
        GSNote.name = "GS"
        self.addChild(GSNote)
        
        ANote = SKSpriteNode(texture: textureAtlas2.textureNamed("white"), color: .clear, size: CGSize(width: 80 , height: (screenSize.height - 58)/13))
        let coinPosition12 = CGPoint(x: -cameraOrigin.x + 40, y: cameraOrigin.y - 148)
        ANote.position = coinPosition12
        ANote.alpha = 1
        ANote.name = "A"
        self.addChild(ANote)
        
        ASNote = SKSpriteNode(texture: textureAtlas2.textureNamed("black"), color: .clear, size: CGSize(width: 80 , height: (screenSize.height - 58)/13))
        let coinPosition13 = CGPoint(x: -cameraOrigin.x + 40, y: cameraOrigin.y - 120)
        ASNote.position = coinPosition13
        ASNote.alpha = 1
        ASNote.name = "AS"
        self.addChild(ASNote)
        
        BNote = SKSpriteNode(texture: textureAtlas2.textureNamed("white"), color: .clear, size: CGSize(width: 80 , height: (screenSize.height - 58)/13))
        let coinPosition14 = CGPoint(x: -cameraOrigin.x + 40, y: cameraOrigin.y - 92)
        BNote.position = coinPosition14
        BNote.alpha = 1
        BNote.name = "B"
        self.addChild(BNote)
        
        C4Note = SKSpriteNode(texture: textureAtlas2.textureNamed("white"), color: .clear, size: CGSize(width: 80 , height: (screenSize.height - 58)/13))
        let coinPosition15 = CGPoint(x: -cameraOrigin.x + 40, y: cameraOrigin.y - 64)
        C4Note.position = coinPosition15
        C4Note.alpha = 1
        C4Note.name = "C4"
        self.addChild(C4Note)
        print(C3Note.size.height)
        
    }
    
    func changebutton() {
        if status == false {
            StartButton.texture = textureAtlas.textureNamed("start")
            status = true
        }
        else {
            StartButton.texture = textureAtlas.textureNamed("pause")
            status = false
        }
        
    }
}
