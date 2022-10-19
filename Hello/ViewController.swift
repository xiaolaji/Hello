//
//  ViewController.swift
//  Hello
//
//  Created by yi on 2022/10/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleView: UILabel!
    @IBOutlet weak var buttonView: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        titleView.text = "我们是爱学习"
        buttonView.addTarget(self, action: #selector(buttonClick2(_:)), for: .touchUpInside)
    }
    
    /// 按钮事件的回调方法
    /// - Parameter sender:
    @IBAction func buttonClick(_ sender: UIButton) {
        print("点我了")
        sender.setTitle("dianjile", for: .normal)
    }
    
    @objc func buttonClick2(_ sender: UIButton) {
        print("点我了22222")
        
    }
    
}

