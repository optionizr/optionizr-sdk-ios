Pod::Spec.new do |s|
  s.name             = "Optionizr"
  s.version          = "1.0.0"
  s.summary          = "Optionizr payment library for mobile iOS apps."
  s.homepage         = "https://www.optionizr.com"
  
  s.license          = 'MIT'
  s.author           = { "Dimitri Dupuis-Latour" => "dupuislatour@me.com" }

  s.cocoapods_version = '>= 1.10.0' # Because Important fixes for xcframeworks support came in CocoaPods 1.10.0
  s.source            = { :git => "https://github.com/yannisroy/optionizr-sdk-ios.git", :tag => s.version.to_s }
  
  # Workaround https://github.com/CocoaPods/CocoaPods/issues/10065
  s.ios.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  s.platform     = :ios
  s.requires_arc = true
  
  s.vendored_frameworks = 'Releases/OptionizrSDK-1.0.0.xcframework'
  s.framework           = 'UIKit', 'WebKit'
end
