Pod::Spec.new do |s|
  s.name             = "scgateway-mixpanel"
  s.version          = "1.0.0"
  s.summary          = "SCgateway with Mixpanel integrated"
  s.homepage         = "https://github.com/ANDESH97/scgateway-mixpanel.git"
  s.license          = 'Code is MIT, then custom font licenses.'
  s.author           = { "Ankit" => "ianktideshmukh@gmail.com" }
  s.source           = { :git => "https://github.com/ANDESH97/scgateway-mixpanel.git", :tag => s.version }

  s.platform     = :ios, '11.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resources = 'Pod/Assets/*'

  s.frameworks = 'UIKit', 'CoreText'
  s.module_name = 'SCGateway_Mixpanel'
  s.dependency 'Mixpanel-swift'
end