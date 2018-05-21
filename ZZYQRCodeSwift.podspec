#
#  Be sure to run `pod spec lint ZZYQRCode.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
s.name = "ZZYQRCodeSwift"
s.version = "1.1.0"
s.license = "MIT"
s.summary = "A Scan QRCode Or BarCode Framework on iOS."
s.homepage = "https://github.com/zhang28602/ZZYQRCodeSwift"
s.authors = { "张泽宇" => "zeyu930213@gmail.com" }
s.source = { :git => "https://github.com/zhang28602/ZZYQRCodeSwift.git", :tag => "1.1.0" }
s.requires_arc = true
s.ios.deployment_target = "8.0"
s.source_files = "ZZYQRCodeSwift/ZZYQRCodeSwift/*.{swift}"
s.resources = "ZZYQRCodeSwift/ZZYQRCodeSwift/ZZYQRCode.bundle"
end
