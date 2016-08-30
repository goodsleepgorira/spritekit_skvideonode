//
//  TestScene.swift
//

import Foundation
import SpriteKit

class TestScene:SKScene {

    var monkey:SKSpriteNode!
    var speaker:SKSpriteNode!
    
    var targetNode:SKSpriteNode!
    
    //現在シーン設定時の呼び出しメソッド
    override func didMoveToView(view: SKView) {
        
        //SKSファイルに配置したノードを取得する。
        monkey = self.childNodeWithName("monkey") as? SKSpriteNode
        speaker = self.childNodeWithName("speaker") as? SKSpriteNode
    }



    //画面タッチ開始時の呼び出しメソッド
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {

        //タッチしたノードを取得する。
        let location = touches.first!.locationInNode(self)
        let node = nodeAtPoint(location) as! SKSpriteNode
        
        if(node == monkey || node == speaker) {
            //タッチしたノードをターゲットに設定する。
            targetNode = node
        }
    }


    
    //画面タッチ移動時の呼び出しメソッド
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {

        //移動後の座標を取得する。
        let location = touches.first!.locationInNode(self)
        
        //移動後の座標に移動するアクションを作成する。
        let action = SKAction.moveTo(CGPoint(x:location.x, y:location.y), duration:0.1)
            
        //アクションを実行する。
        targetNode.runAction(action)
    }
}