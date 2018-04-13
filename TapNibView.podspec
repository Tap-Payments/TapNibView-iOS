Pod::Spec.new do |tapNibView|
    
    tapNibView.platform = :ios
    tapNibView.ios.deployment_target = '8.0'
    tapNibView.name = 'TapNibView'
    tapNibView.summary = 'Base View That is loading from the nib.'
    tapNibView.requires_arc = true
    tapNibView.version = '1.0'
    tapNibView.license = { :type => 'MIT', :file => 'LICENSE' }
    tapNibView.author = { 'Tap Payments' => 'hello@tap.company' }
    tapNibView.homepage = 'https://github.com/Tap-Payments/TapNibView-iOS'
    tapNibView.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.1' }
    tapNibView.source = { :git => 'https://github.com/Tap-Payments/TapNibView-iOS.git', :tag => tapNibView.version.to_s }
    tapNibView.source_files = 'TapNibView/Source/*.swift'
    
    tapNibView.dependency 'TapAdditionsKit/ObjectiveC/NSObject'
    tapNibView.dependency 'TapAdditionsKit/Tap/ClassProtocol'
    tapNibView.dependency 'TapAdditionsKit/UIKit/UIView'
    
end
