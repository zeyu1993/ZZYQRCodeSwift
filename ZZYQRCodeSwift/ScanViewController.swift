//
//  ScanViewController.swift
//  ZZYQRCodeSwift
//
//  Created by 张泽宇 on 2017/5/24.
//  Copyright © 2017年 zzy. All rights reserved.
//

import UIKit

class ScanViewController: UIViewController {
    var sessionManager:AVCaptureSessionManager?
    override func viewDidLoad() {
        super.viewDidLoad()
        sessionManager = AVCaptureSessionManager(captureType: .AVCaptureTypeBoth, scanRect: CGRect.null, success: { (result) in
            if let r = result {
                print(r)
            }
        })
        sessionManager?.showPreViewLayerIn(view: view)
        sessionManager?.isPlaySound = true
    }


}
