//
//  ScanViewController.swift
//  ZZYQRCodeSwift
//
//  Created by 张泽宇 on 2017/5/24.
//  Copyright © 2017年 zzy. All rights reserved.
//

import UIKit

class ScanViewController: UIViewController ,UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    var sessionManager:AVCaptureSessionManager?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sessionManager = AVCaptureSessionManager(captureType: .AVCaptureTypeBoth, scanRect: CGRect.null, success: { (result) in
            if let r = result {
                self .showResult(result: r)
            }
        })
        sessionManager?.showPreViewLayerIn(view: view)
        sessionManager?.isPlaySound = true
        
        let item = UIBarButtonItem(title: "相册", style: .plain, target: self, action: #selector(openPhotoLib))
        navigationItem.rightBarButtonItem = item
    }
    
    override func viewWillAppear(_ animated: Bool) {
        sessionManager?.start()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        sessionManager?.stop()
    }
    
    func showResult(result: String) {
        let alert = UIAlertView(title: "扫描结果", message: result, delegate: nil, cancelButtonTitle: "确定")
        alert .show()
    }
    
    func openPhotoLib() {
        AVCaptureSessionManager.checkAuthorizationStatusForPhotoLibrary(grant: { 
            let imagePicker = UIImagePickerController()
            imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
            imagePicker.delegate = self
            self.present(imagePicker, animated: true, completion: nil)
        }) { 
            let action = UIAlertAction(title: "确定", style: UIAlertActionStyle.default, handler: { (action) in
                let url = URL(string: UIApplicationOpenSettingsURLString)
                UIApplication.shared.openURL(url!)
            })
            let con = UIAlertController(title: "权限未开启",
                                        message: "您未开启相册权限，点击确定跳转至系统设置开启",
                                        preferredStyle: UIAlertControllerStyle.alert)
            con.addAction(action)
            self.present(con, animated: true, completion: nil)
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        sessionManager?.start()
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        dismiss(animated: true) { 
            self.sessionManager?.start()
            self.sessionManager?.scanPhoto(image: info["UIImagePickerControllerOriginalImage"] as! UIImage, success: { (str) in
                if let result = str {
                    self.showResult(result: result)
                }else {
                    self.showResult(result: "未识别到二维码")
                }
            })
            
        }
    }


}
