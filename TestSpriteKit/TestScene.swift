//
//  TestScene.swift
//

import Foundation
import SpriteKit

class TestScene:SKScene {
    
    
    //現在シーン設定時の呼び出しメソッド
    override func didMove(to view: SKView) {
        
        //シーンに配置するノードを作成する。
        let background = SKSpriteNode(imageNamed: "field")
        let monkey1 = SKSpriteNode(imageNamed: "monkey")
        let monkey2 = SKSpriteNode(imageNamed: "monkey")
        let bird = SKSpriteNode(imageNamed: "bird_brown")
        
        //ノードの座標を指定する。
        background.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
        monkey1.position =  CGPoint(x: self.frame.width*1/3, y: self.frame.height/2)
        monkey2.position =  CGPoint(x: self.frame.width*2/3, y: self.frame.height/2)
        bird.position = CGPoint(x: self.frame.width*2/3, y: self.frame.height*4/5)
        
        //ノードをシーンに配置する。
        self.addChild(background)
        self.addChild(monkey1)
        self.addChild(monkey2)
        self.addChild(bird)        
    }
    
 }
