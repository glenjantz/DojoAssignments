//
//  C3note.swift
//  Chorus
//
//  Created by Glen Jantz on 3/28/17.
//  Copyright © 2017 frandz. All rights reserved.
//

import Foundation
import SpriteKit
class C3note: SKSpriteNode{
    let hurtSound =
        SKAction.playSoundFileNamed("Sound/C3.mp3",
                                    waitForCompletion: false)
    var initialSize:CGSize = CGSize(width: 50, height: 50)
    init() {
        super.init(texture: nil, color: .clear, size: initialSize)
        self.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: self.size.width, height: self.size.height))
        self.physicsBody?.categoryBitMask = PhysicsCategory.note.rawValue
        self.physicsBody?.collisionBitMask = 0
        self.physicsBody?.isDynamic = false
        self.physicsBody?.contactTestBitMask = PhysicsCategory.line.rawValue
        
    }
    func playsound(){
        self.run(hurtSound)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    }

   
