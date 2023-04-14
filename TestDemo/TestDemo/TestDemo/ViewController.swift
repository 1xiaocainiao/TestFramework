//
//  ViewController.swift
//  TestDemo
//
//  Created by  on 2023/4/13.
//

import UIKit
import ShowText
import SVProgressHUD

class TestModel: Codable {
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ShowText().show()
        
        NetworkHelper<TestModel>().request()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        SVProgressHUD.show(UIImage(named: "test1")!, status: "1223")
    }


}

