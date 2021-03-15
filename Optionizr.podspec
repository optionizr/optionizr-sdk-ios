Pod::Spec.new do |s|
  s.name             = "Optionizr"
  s.version          = "1.0.0"
  s.summary          = "Optionizr payment library for mobile iOS apps."
  s.homepage         = "https://www.optionizr.com"
  
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "Optionizr" => "contact@optionizr.com" }

  s.cocoapods_version = '>= 1.10.0' # Because Important fixes for xcframeworks support came in CocoaPods 1.10.0
  s.source            = { :git => "https://github.com/optionizr/optionizr-sdk-ios.git", :tag => s.version.to_s }
  
  s.platform     = :ios
  s.requires_arc = true
  
  s.ios.vendored_frameworks = 'OptionizrSDK.xcframework'
end
