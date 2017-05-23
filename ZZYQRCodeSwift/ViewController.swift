//
//  ViewController.swift
//  ZZYQRCodeSwift
//
//  Created by 张泽宇 on 2017/5/22.
//  Copyright © 2017年 zzy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func scanBtnClick(_ sender: Any) {
        
        AVCaptureSessionManager.checkAuthorizationStatusForCamera(grant: { 
            let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "scanViewController")
            self.navigationController?.pushViewController(controller, animated: true)
        }){
            let action = UIAlertAction(title: "确定", style: UIAlertActionStyle.default, handler: { (action) in
                let url = URL(string: UIApplicationOpenSettingsURLString)
                UIApplication.shared.openURL(url!)
            })
            let con = UIAlertController(title: "权限未开启", message: "您未开启相机权限，点击确定跳转至系统设置开启", preferredStyle: UIAlertControllerStyle.alert)
            con.addAction(action)
            self.present(con, animated: true, completion: nil)
        }
    }



}

