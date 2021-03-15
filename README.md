OptionizrSDK

# Installation CocoaPods
pod 'Optionizr', '~> 1.0'

# Installation Swift Package Manager
Xcode > File > Swift Package > Add Package Dependency > https://github.com/optionizr/optionizr-sdk-ios

# Manual xcframework Installation
1. Download OptionzrSDK.xcframework
2. Drop-in your project > Target > Frameworks

# Usage
1. Add optionizr.plist config file in your target, containing mandatory MERCHANT_ID and PRODUCTS list.

2. Instantiate tunnel
```swift
self.optinizrTunnel = OZRTunnel()
self.optinizrTunnel?.delegate = self
self.optinizrTunnel?.initializeTunnel(productName: product , additionalData: [:])
```

3. Implement protocol OZRTunnelWebViewControllerDelegate and present when ready
```swift
func optionzrTunnelReadyToPresent(_ tunnel: OZRTunnel) {
    tunnel.presentFrom(self)
}
```

4. Implement other protocol functions to be updated
```swift
func optionizrTunnelFailed(_ tunnel: OZRTunnel, error: Error?)
func optionizrTunnelCancelled(_ tunnel: OZRTunnel)
func optionizrTunnelCompleted(_ tunnel: OZRTunnel)
func optionizrTunnelCompletedRedirect(_ tunnel: OZRTunnel)
```