
Pod::Spec.new do |s|
    s.name             = 'MFNudity'
    s.version          = ‘1.0.0’
    s.summary          = ‘Check image nudity’
    s.license          = 'MIT'
    s.author           = {‘Jigar Thakkar’ => ‘jigarthakkar4444@gmail.com’, 'Arpan Desai' => 'arpan@mobilefirst.in'}

    s.source           = { :git => 'https://github.com/MobileFirstInc/MFNudity.git’}

    s.homepage = 'https://www.mobilefirst.in'
    s.platform     = :ios, ’11.0’
    s.requires_arc = true

    s.source_files = ‘MFNudity/**/*.{swift,h}'
    s.resource_bundles = {
    'MFCard' => [‘MFNudity/**/*.{xib,xcassets,json,imageset,png,jpg}']
    }
    s.frameworks = 'UIKit', 'Foundation'
    s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3' }
end