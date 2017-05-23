//
//  ViewController.swift
//  ZZYQRCodeSwift
//
//  Created by 张泽宇 on 2017/5/22.
//  Copyright © 2017年 zzy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let image = UIImage.createQRCode(size: 200, dataStr: "你好")
        self.imageView.image = image; 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

