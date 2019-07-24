//
//  GameScene.swift
//  gamesecondpart
//
//  Created by Saket Chinchalikar on 7/24/19.
//  Copyright © 2019 Lalit. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    
    var circle = SKShapeNode()
     var enemy = SKShapeNode()
    
    override func didMove(to view: SKView) {
        scene?.backgroundColor = SKColor.white
        
        // 1
        let borderBody = SKPhysicsBody(edgeLoopFrom: self.frame)
        // 2
        borderBody.friction = 0
        // 3
        self.physicsBody = borderBody
        
        
        circle = SKShapeNode(circleOfRadius: 70 )
        enemy = SKShapeNode(circleOfRadius: 90 )// Size of Circle = Radius setting.
        circle.position = CGPoint(x: 0  , y: 0)
        enemy.position = CGPoint(x: 0  , y: 25)
        circle.strokeColor = UIColor.black
        enemy.strokeColor = UIColor.black
        //touch location passed from touchesBegan.
        circle.physicsBody = SKPhysicsBody(circleOfRadius: 70)
        enemy.physicsBody = SKPhysicsBody(circleOfRadius: 90)
        circle.physicsBody?.isDynamic = false
        circle.physicsBody?.friction = 0
        enemy.physicsBody?.isDynamic = true
        enemy.physicsBody?.friction = 0
        enemy.physicsBody?.restitution = 1
        enemy.physicsBody?.linearDamping = 0
        enemy.physicsBody?.angularDamping = 0
        
        //.physicsBody?.dynamic = true
        self.addChild(circle)
        self.addChild(enemy)
    }
    
    
    
    func touchDown(atPoint pos : CGPoint) {
    
    }
    
    func touchMoved(toPoint pos : CGPoint) {
    
    }
    
    func touchUp(atPoint pos : CGPoint) {
    
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        for t in touches { self.touchDown(atPoint: t.location(in: self))
            
            
          
            
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches {
            let location = t.location(in: self)
            circle.position.x = location.x
            circle.position.y = location.y
            
            // Call makeCircleInPostion, send touch location.
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    

   

    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
