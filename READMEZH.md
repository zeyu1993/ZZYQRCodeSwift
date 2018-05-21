# ZZYQRCodeSwift

使用系统API（AVFoundation）进行封装，包含UI界面以及对二维码，条形码进行扫描，生成等操作

### 支持 swift4.1

### Objective-C Version: **[ZZYQRCode](https://github.com/zhang28602/ZZYQRCode)**

## 如何安装

```
platform :ios, '8.0'
use_frameworks!
pod 'ZZYQRCodeSwift', '~> 1.1.0'
```

## 如何使用
1. 创建sessionManager,同时需要设置扫描类型、扫描区域等

```objc
let session = AVCaptureSessionManager(captureType: .AVCaptureTypeBoth, scanRect: CGRect.null, success: SuccessBlock)
```

2. 显示View

```objc
session.showPreViewLayerIn(view: view)
```
## 附加功能
1. 扫描音效

```objc
var isPlaySound = false

var soundName:String?
```

2. 开启闪光灯

```objc
session.turnTorch(state: torchState)
```

3. 扫描相册中的二维码

```objc
session.scanPhoto(image: UIImage, success: SuccessBlock)
```

4. 权限监测

```objc
class func checkAuthorizationStatusForCamera(grant:@escaping GrantBlock, denied:DeniedBlock)
```

5. 创建普通二维码

```objc
let image = UIImage.createQRCode(size: 200, dataStr: "hello")
```

6. 自定义二维码

```objc
let image = UIImage(named: "bigMax")
QRImage.image = UIImage.createCustomizeQRCode(size: 200,
                                           dataStr: "hello",
                                         imageType: .CircularImage,
                                         iconImage: image!,
                                     iconImageSize: 40)
```

## 注意事项
由于iOS10权限设置变换，需要在项目中的info.plist文件中添加如下文件

```
<key>NSCameraUsageDescription</key>
<string></string>
<key>NSPhotoLibraryUsageDescription</key>
<string></string>
```

# 页面效果
![](https://github.com/zhang28602/ZZYQRCodeSwift/raw/master/Screenshots/show.gif)
