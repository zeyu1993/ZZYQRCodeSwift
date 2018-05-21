# ZZYQRCodeSwift

Using the system API (AVFoundation) for packaging, including the UI interface and QR code, barcode scanning, generating and other operations 

### Support swift4.1

### Objective-C Version: **[ZZYQRCode](https://github.com/zhang28602/ZZYQRCode)**

### [中文介绍](https://github.com/zhang28602/ZZYQRCodeSwift/blob/master/READMEZH.md)

## HOW to install

```
platform :ios, '8.0'
use_frameworks!
pod 'ZZYQRCodeSwift', '~> 1.1.0'
```

## How to use
1. Create sessionManager

```objc
let session = AVCaptureSessionManager(captureType: .AVCaptureTypeBoth, scanRect: CGRect.null, success: SuccessBlock)
```

2. Show view

```objc
session.showPreViewLayerIn(view: view)
```
## Others features
1. Scan sound effects

```objc
var isPlaySound = false

var soundName:String?
```

2. Torch

```objc
session.turnTorch(state: torchState)
```

3. Scan the QR code in the album

```objc
session.scanPhoto(image: UIImage, success: SuccessBlock)
```

4. Check authorization status

```objc
class func checkAuthorizationStatusForCamera(grant:@escaping GrantBlock, denied:DeniedBlock)
```

5. Create QR code

```objc
let image = UIImage.createQRCode(size: 200, dataStr: "hello")
```

6. Create customize QR code

```objc
let image = UIImage(named: "bigMax")
QRImage.image = UIImage.createCustomizeQRCode(size: 200,
                                           dataStr: "hello",
                                         imageType: .CircularImage,
                                         iconImage: image!,
                                     iconImageSize: 40)
```

## Pay attention
Because of iOS10 authorization change,you need to add code in your info.plist

```
<key>NSCameraUsageDescription</key>
<string></string>
<key>NSPhotoLibraryUsageDescription</key>
<string></string>
```

# Page show
![](https://github.com/zhang28602/ZZYQRCodeSwift/raw/master/Screenshots/show.gif)
