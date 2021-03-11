Pod::Spec.new do |s|
  s.name             = "Optionizr"
  s.version          = "1.0.0"
  s.summary          = "Optionizr payment library for mobile iOS apps."
  s.homepage         = "https://www.optionizr.com"
  
  s.license          = 'MIT'
  s.author           = { "Dimitri Dupuis-Latour" => "dupuislatour@me.com" }
    
  s.source           = { :git => "https://github.com/yannisroy/optionizr-sdk-ios.git", :tag => s.version.to_s }
    
  s.platform     = :ios
  s.requires_arc = true
  
  s.ios.vendored_frameworks = 'Releases/OptionizrSDK-1.0.0.xcframework'
  s.framework               = 'UIKit', 'WebKit'
end
