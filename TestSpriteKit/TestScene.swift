//
//  TestScene.swift
//

import Foundation
import SpriteKit

class TestScene:SKScene {
    
    //現在シーン設定時の呼び出しメソッド
    override func didMoveToView(view: SKView) {

       //シーンに配置するノードを作成する。
       let background = SKSpriteNode(imageNamed: "field")
       let monkey = SKSpriteNode(imageNamed: "monkey")
       let bird = SKSpriteNode(imageNamed: "bird_brown")
       
       //ノードの座標を指定する。
       background.position = CGPoint(x: CGRectGetMidX(self.frame), y: CGRectGetMidY(self.frame))
       monkey.position =  CGPoint(x: self.frame.width/3, y: self.frame.height/5)
       bird.position = CGPoint(x: self.frame.width*2/3, y: self.frame.height*3/5)

       //ノードをシーンに配置する。
       self.addChild(background)
       self.addChild(monkey)
       self.addChild(bird)
    }
}