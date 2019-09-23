Pod::Spec.new do |s|
  s.name         = "KKJSBridge2"
  s.version      = "1.0.3"
  s.summary      = "One-stop solution for WKWebView to support offline resource，Ajax request and cookie sync issues."
  s.description  = <<-DESC
                   One-stop solution for WKWebView to support offline resource，Ajax request and cookie sync issues
                   DESC

  s.homepage     = "https://github.com/karosLi/KKJSBridge"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { "Karosli" => "karosli1314@gmail.com" }
  s.platform     = :ios
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/karosLi/KKJSBridge.git", :tag => "#{s.version}" }

  s.source_files  = "KKJSBridge2/Demo/**/*.{h,m}", "KKJSBridge2/Demo/*.{h,m}"
  s.resources = "KKJSBridge2/Demo/JS/*.js"

  s.frameworks = "WebKit", "UIKit"
  s.requires_arc = true
  # s.dependency 'KKJSBridge', :path => '../'



end
