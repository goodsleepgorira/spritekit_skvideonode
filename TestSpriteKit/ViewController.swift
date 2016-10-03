//
//  ViewController.swift
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
    
    //最初からあるメソッド
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //SKViewを取得する。
        let skView = self.view as! SKView
        
        //SKSファイルを指定してSKSceneインスタンスを生成する。
        let scene = TestScene(fileNamed: "TestScene")
      
        //画面端に物理ボディを設定する。
        scene!.physicsBody = SKPhysicsBody(edgeLoopFrom: scene!.frame)
        
        //スケールモードを変更する。
        scene?.scaleMode = .aspectFit
        
        //現在シーンを設定する。
        skView.presentScene(scene)
        
        
    }
}
