TapAdditionsKitDependencyVersion = '>= 1.3.3' unless defined? TapAdditionsKitDependencyVersion

Pod::Spec.new do |tapNibView|
    
    tapNibView.platform                 = :ios
    tapNibView.ios.deployment_target    = '8.0'
    tapNibView.swift_versions			= ['4.0', '4.2', '5.0']
    tapNibView.name                     = 'TapNibView'
    tapNibView.summary                  = 'Base View That is loading from the nib.'
    tapNibView.requires_arc             = true
    tapNibView.version                  = '1.0.4'
    tapNibView.license                  = { :type => 'MIT', :file => 'LICENSE' }
    tapNibView.author                   = { 'Tap Payments' => 'hello@tap.company' }
    tapNibView.homepage                 = 'https://github.com/Tap-Payments/TapNibView-iOS'
    tapNibView.source                   = { :git => 'https://github.com/Tap-Payments/TapNibView-iOS.git', :tag => tapNibView.version.to_s }
    tapNibView.source_files             = 'TapNibView/Source/*.swift'
    
    tapNibView.dependency 'TapAdditionsKit/ObjectiveC/NSObject',    TapAdditionsKitDependencyVersion
    tapNibView.dependency 'TapAdditionsKit/Tap/ClassProtocol',      TapAdditionsKitDependencyVersion
    tapNibView.dependency 'TapAdditionsKit/UIKit/UIView',           TapAdditionsKitDependencyVersion
    
end
