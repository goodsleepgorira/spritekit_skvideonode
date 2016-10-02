//
//  TestScene.swift
//

import Foundation
import SpriteKit

class TestScene:SKScene {
    
    var maruta1:SKSpriteNode!
    var maruta2:SKSpriteNode!
    
    var target:SKSpriteNode!

    
    //現在シーン設定時の呼び出しメソッド
    override func didMove(to view: SKView) {

        //SKSファイルに配置した丸太ノードを取得する。
        maruta1 = self.childNode(withName: "maruta1") as? SKSpriteNode
        maruta2 = self.childNode(withName: "maruta2") as? SKSpriteNode
        
        target = maruta1
    }
    
    
    //画面タッチ開始時の呼び出しメソッド
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        //タッチしたノードを取得する。
        let location = touches.first!.location(in: self)
        let node = atPoint(location) as! SKSpriteNode
        
        //タッチしたノードが丸太の場合、ターゲットノードに設定する。
        if(node == maruta1 || node == maruta2){
            target = node
        }
    }
    
    
    //画面タッチ移動時の呼び出しメソッド
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {

        //タッチした座標を取得する。
        let location = touches.first!.location(in: self)
        
        //ターゲットノードをタッチした座標まで移動するアクションを実行する。
        let action = SKAction.move(to: CGPoint(x:location.x, y:location.y), duration:0.1)
        target.run(action)
    }
}
