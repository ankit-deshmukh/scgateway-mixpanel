Pod::Spec.new do |s|
  s.name             = "scgateway-mixpanel"
  s.version          = "1.0.0"
  s.summary          = "SCgateway with Mixpanel integrated"
  s.homepage         = "https://github.com/ankit-deshmukh/scgateway-mixpanel-podspec.git"
  s.license          = 'MIT'
  s.author           = { "Ankit" => "ianktideshmukh@gmail.com" }
  s.source ={ :http => "https://gateway.smallcase.com/scgateway_mixpanel/1.0.0/SCGateway_MixpanelFramework.zip"}
  
  s.platform     = :ios, '11.0'
  s.requires_arc = true

#s.source_files = 'Pod/Classes'
#s.resources = 'Pod/Assets/*'

  s.frameworks = 'UIKit', 'CoreText'
  s.module_name = 'SCGateway_Mixpanel'
  s.dependency 'Mixpanel-swift'
end