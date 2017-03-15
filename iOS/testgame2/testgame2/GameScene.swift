//
//  GameScene.swift
//  testgame2
//
//  Created by Glen Jantz on 3/10/17.
//  Copyright © 2017 Glen Jantz. All rights reserved.
//

import SpriteKit





class GameScene: SKScene {
    // Add a second Bee to the scene:
   
    let initialPlayerPosition = CGPoint(x: 150, y: 250)
    var playerProgress = CGFloat()
    // Create a constant cam as a SKCameraNode:
    var screenCenterY = CGFloat()

    let cam = SKCameraNode()
    let ground = Ground()
    // Create our bee node as a property of GameScene so we can
    // access it throughout the class
    // (Make sure to remove the old bee declaration below)
//    let bee = SKSpriteNode()
    let player = Player()
    
    override func didMove(to view: SKView) {
        // Store the vertical center of the screen:
        screenCenterY = self.size.height / 2
        self.anchorPoint = .zero
        self.backgroundColor = UIColor(red: 0.4, green: 0.6, blue:
            0.95, alpha: 1.0)
        // Assign the camera to the scene
        self.camera = cam
        // Call the new bee function
//        self.addTheFlyingBee()
        let bee2 = Bee()
        bee2.position = CGPoint(x: 325, y: 325)
        self.addChild(bee2)
        // ... and a third Bee:
        let bee3 = Bee()
        bee3.position = CGPoint(x: 200, y: 325)
        self.addChild(bee3)
        // Position the player:
//        player.position = CGPoint(x: 150, y: 250)
        
        // Add the player to the scene:
        player.position = initialPlayerPosition
        // Add the player node to the scene:
        self.addChild(player)
        
        // Position the ground based on the screen size.
        // Position X: Negative one screen width.
        // Position Y: 150 above the bottom (remember the top
        // left anchor point).
//        ground.position = CGPoint(x: -self.size.width * 2, y: 150)
        ground.position = CGPoint(x: -self.size.width * 2, y: 30)
        // Set the ground width to 3x the width of the scene
        // The height can be 0, our child nodes will create the height
        ground.size = CGSize(width: self.size.width * 6, height: 0)
        // Run the ground's createChildren function to build
        // the child texture tiles:
        ground.createChildren()
        // Add the ground node to the scene:
        self.addChild(ground)
        
        bee2.physicsBody?.mass = 0.2
//        bee2.physicsBody?.applyImpulse(CGVector(dx: -3, dy: 0))
        
        bee2.physicsBody?.applyImpulse(CGVector(dx: -25, dy: 0))
        // Set gravity
        self.physicsWorld.gravity = CGVector(dx: 0, dy: -5)
    }
//     A new function
//    override func didSimulatePhysics() {
//        // Keep the camera centered on the bee
//        // Notice the ! operator after camera. SKScene's camera
//        // is an optional, but we know it is there since we
//        // assigned it above in the didMove function. We can tell
//        // Swift that we know it can unwrap this value by using
//        // the ! operator after the property name.
//        self.camera!.position = player.position
//    }
    override func didSimulatePhysics() {
        // Keep the camera locked at mid screen by default:
        var cameraYPos = screenCenterY
        cam.yScale = 1
        cam.xScale = 1
        // Follow the player up if higher than half the screen:
        if (player.position.y > screenCenterY) {
            cameraYPos = player.position.y
            // Scale out the camera as they go higher:
            let percentOfMaxHeight = (player.position.y - screenCenterY) / (player.maxHeight - screenCenterY)
            let newScale = 1 + percentOfMaxHeight
            cam.yScale = newScale
            cam.xScale = newScale
        }
        // Move the camera for our adjustment:
        self.camera!.position = CGPoint(x: player.position.x,y: cameraYPos)
        
        // Keep track of how far the player has flown
        playerProgress = player.position.x - initialPlayerPosition.x
        // Check to see if the ground should jump forward:
        ground.checkForReposition(playerProgress: playerProgress)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>,with event: UIEvent?) {
        for touch in (touches) {
        
    // Find the location of the touch:
    let location = touch.location(in: self)
    // Locate the node at this location:
    let nodeTouched = atPoint(location)
    // Attempt to downcast the node to the GameSprite protocol
    if let gameSprite = nodeTouched as? GameSprite {
        // If this node adheres to GameSprite, call onTap:
        gameSprite.onTap()
        }
        
    }
        player.startFlapping()
}
    
    override func touchesEnded(_ touches: Set<UITouch>,with event: UIEvent?) {
        player.stopFlapping()
    }
    override func touchesCancelled(_ touches: Set<UITouch>,with event: UIEvent?) {
        player.stopFlapping()
    }
    
    
    
    override func update(_ currentTime: TimeInterval) {
        player.update()
    }

    // I moved all of our bee animation code into a new function:
//    func addTheFlyingBee() {
//        // Position our bee
//        bee.position = CGPoint(x: 250, y: 250)
//        bee.size = CGSize(width: 28, height: 24)
//        // Add the bee to the scene
//        self.addChild(bee)
//        // Find the bee textures from the texture atlas
//        let beeAtlas = SKTextureAtlas(named:"Enemies")
//        let beeFrames:[SKTexture] = [
//            beeAtlas.textureNamed("bee"),
//            beeAtlas.textureNamed("bee-fly")]
//        // Create a new SKAction to animate between the frames
//        let flyAction = SKAction.animate(with: beeFrames,
//                                         timePerFrame: 0.14)
//        // Create an SKAction to run the flyAction repeatedly
//        let beeAction = SKAction.repeatForever(flyAction)
//        // Instruct our bee to run the final repeat action:
//        bee.run(beeAction)
//        // Set up new actions to move our bee back and forth:
//        let pathLeft = SKAction.moveBy(x: -200, y: -10, duration: 2)
//        let pathRight = SKAction.moveBy(x: 200, y: 10, duration: 2)
//        let flipTextureNegative =
//            SKAction.scaleX(to: -1, duration: 0)
//        let flipTexturePositive =
//            SKAction.scaleX(to: 1, duration: 0)
//        // Combine actions into a cohesive flight sequence
//        let flightOfTheBee = SKAction.sequence([
//            pathLeft,flipTextureNegative, pathRight,
//            flipTexturePositive])
//        // Last, create a looping action that will repeat forever
//        let neverEndingFlight =
//            SKAction.repeatForever(flightOfTheBee)
//        // Tell our bee to run the flight path, and away it goes!
//        bee.run(neverEndingFlight)
//    }
}


//
//class GameScene: SKScene {
//    
//
//    
//    override func didMove(to view: SKView) {
//        // Make the scene position from its lower left
//        // corner, regardless of any other settings:
////        self.anchorPoint = .zero
////        
////        // Instantiate a constant, mySprite, instance of SKSpriteNode
////        // The SKSpriteNode constructor can set color and size
////        // Note: UIColor is a UIKit class with built-in color presets
////        // Note: CGSize is a type we use to set node sizes
////        let mySprite = SKSpriteNode(color: .blue, size: CGSize(width: 50, height: 50))
//// 
////        // Assign our sprite a position in points, relative to its
////        // parent node (in this case, the scene)
////        mySprite.position = CGPoint(x: 150, y: 150)
////        
////        
////        // Finally, we need to add our sprite node into the node tree.
////        // Call the SKScene'saddChild function to add the node
////        // Note: In Swift, 'self' is an automatic property
////        // on any type instance, exactly equal to the instance itself
//////        // So in this case, it refers to the GameScene instance
//////        self.addChild(mySprite)
//////        
//////        // SpriteKit will tween to the new position over the course of the
//////        // duration, in this case 5 seconds
////////        let demoAction = SKAction.move(to: CGPoint(x: 300, y: 150), duration: 3)
//////        
//////        //scales mySprite to be 4x larger over 5 seconds
////////        let demoAction = SKAction.scale(to: 4, duration: 5)
////////        
//////        // Tell our square node to execute the action!
////////        mySprite.run(demoAction)
//////        
//////        
//////        // Scale up to 4X initial scale
//////        let demoAction1 = SKAction.scale(to: 4, duration: 5)
//////        // Rotate 5 radians
//////        let demoAction2 = SKAction.rotate(byAngle: 5, duration: 5)
//////        // Group the actions
////////        let actionGroup = SKAction.group([demoAction1, demoAction2])
////////        // Execute the group!
////////        mySprite.run(actionGroup)
//////        
//////        // Group the actions into a sequence
//////        let actionSequence = SKAction.sequence([demoAction1, demoAction2])
//////        // Execute the sequence!
//////        mySprite.run(actionSequence)
////        





////        // Position from the lower left corner
////        self.anchorPoint = .zero
////        // set the scene's background to a nice sky blue
////        // Note: UIColor uses a scale from 0 to 1 for its colors
////        self.backgroundColor = UIColor(red: 0.4, green: 0.6, blue:
////            0.95, alpha: 1.0)
////        // create our bee sprite node
////          // let bee = SKSpriteNode(imageNamed: "bee-fly")
////        let bee = SKSpriteNode()
////        // size our bee node
////        bee.size = CGSize(width: 28, height: 24)
////        // position our bee node
////        bee.position = CGPoint(x: 250, y: 250)
////        // attach our bee to the scene's node tree
////        self.addChild(bee)
////        
////        // Find our new bee texture atlas
////        let beeAtlas = SKTextureAtlas(named:"Enemies")
////        // Grab the two bee frames from the texture atlas in an array
////        // Note: Check out the syntax explicitly declaring beeFrames
////        // as an array of SKTextures. This is not strictly necessary,
////        // but it makes the intent of the code more readable, so I
////        // chose to include the explicit type declaration here:
////        let beeFrames:[SKTexture] = [
////            beeAtlas.textureNamed("bee"),
////            beeAtlas.textureNamed("bee-fly")]
////        // Create a new SKAction to animate between the frames once
////        let flyAction = SKAction.animate(with: beeFrames,
////                                         timePerFrame: 0.14)
////        // Create an SKAction to run the flyAction repeatedly
////        let beeAction = SKAction.repeatForever(flyAction)
////        // Instruct our bee to run the final repeat action:
////        bee.run(beeAction)
////        
////        
////        
////        // Set up new actions to move our bee back and forth:
////        let pathLeft = SKAction.moveBy(x: -200, y: 0, duration: 2)
////        let pathRight = SKAction.moveBy(x: 200, y: 0, duration: 4)
//////        let pathbackleft = SKAction.moveBy(x: -200, y: 0, duration: 2)
////        // These two scaleX actions flip the texture back and forth
////        // We will use these to turn the bee to face left and right
////        let flipTextureNegative = SKAction.scaleX(to: -1, duration: 0)
////        let flipTexturePositive = SKAction.scaleX(to: 1, duration: 0)
////        // Combine actions into a cohesive flight sequence for our bee
////        let flightOfTheBee = SKAction.sequence([pathLeft,
////                                                flipTextureNegative, pathRight, flipTexturePositive])
////        // Last, create a looping action that will repeat forever
////        let neverEndingFlight =
////            SKAction.repeatForever(flightOfTheBee)
////        // Tell our bee to run the flight path, and away it goes!
////        bee.run(neverEndingFlight)
//        
//        
//        
//        }
//    }

