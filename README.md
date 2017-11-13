# MFNudity

<img src="https://img.shields.io/badge/platform-iOS-blue.svg?style=flat" alt="Platform iOS 11" />
<img src="https://img.shields.io/badge/swift4-compatible-green.svg?style=flat" alt="Swift 4 compatible" />
<img src="https://img.shields.io/badge/license-MIT-blue.svg?style=flat" alt="License MIT" />
<a href="https://cocoapods.org/pods/MFNudity"><img src="https://img.shields.io/badge/pod-1.0.1-blue.svg" alt="CocoaPods compatible" /></a>

MFNudity is an iOS library that can be helpful for checking image nudity. You can use it in any iOS application which is dealing with images.

*Swift 4.0 (Xcode 9.0)*

```ruby
pod 'MFNudity'
```

## Usage

First Step  - `@import MFNudity` to your project

Second Step - Pass image to MFNudity's shared object

```
 MFNudity.shared.checkImageNudity(image: resultImage.image!) { (error, confidence) in
            
            if error != nil
            {
                let converted = String(format: "%.2f", confidence!)
                resultLbl.text = "NSFW - \(converted) %"
            }

     }

```

This 'confidence' shows float value from 0 to 1 . You can simply convert it into % and show image's nudity in percentage . For higher 'confidence' value it will be nude picture.

