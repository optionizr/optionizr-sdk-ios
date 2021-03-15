Pod::Spec.new do |s|
  s.name             = "Optionizr"
  s.version          = "0.9.0b"
  s.summary          = "Optionizr payment library for mobile iOS apps."
  s.homepage         = "https://www.optionizr.com"
  
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "Dimitri Dupuis-Latour" => "dupuislatour@me.com" }

  s.cocoapods_version = '>= 1.10.0' # Because Important fixes for xcframeworks support came in CocoaPods 1.10.0
  s.source            = { :git => "https://github.com/yannisroy/optionizr-sdk-ios.git", :tag => s.version.to_s }
  
  s.platform     = :ios
  s.requires_arc = true
  
  s.ios.vendored_frameworks = 'OptionizrSDK.xcframework'
end
