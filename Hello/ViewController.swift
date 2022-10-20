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
    
    @IBOutlet weak var tfUsername: UITextField!
    @IBOutlet weak var iconView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        titleView.text = "我们是爱学习"
        buttonView.addTarget(self, action: #selector(buttonClick2(_:)), for: .touchUpInside)
        iconView.image = UIImage(named: "111")
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
    
    @IBAction func loginClick(_ sender: Any) {
        let inputText = tfUsername.text!
        if inputText.isEmpty {
            print("用户名不能为空")
            return
        }
        print("你输入的用户名是：\(inputText)")
    }
    
}

