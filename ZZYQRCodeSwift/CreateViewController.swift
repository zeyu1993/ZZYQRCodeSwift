//
//  CreateViewController.swift
//  ZZYQRCodeSwift
//
//  Created by 张泽宇 on 2017/5/23.
//  Copyright © 2017年 zzy. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController {

    @IBOutlet weak var QRImage: UIImageView!
    @IBOutlet weak var QRImageBg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let image = UIImage(named: "bigMax")
        QRImage.image = UIImage.createCustomizeQRCode(size: 200,
                                                      dataStr: "hello",
                                                      imageType: .CircularImage,
                                                      iconImage: image!,
                                                      iconImageSize: 40)
        let temp = UIImage.createCustomizeQRCode(size: 150,
                                                 dataStr: "hello",
                                                 imageType: .SquareImage,
                                                 iconImage: image!,
                                                 iconImageSize: 40);
        let bgImage = UIImage(named: "flower")
        QRImageBg.image = UIImage.addQRCodeBg(bgImage: bgImage!, bgImageSize: 200, QRImage: temp!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
