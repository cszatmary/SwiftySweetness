Pod::Spec.new do |s|
  s.name             = 'SwiftySweetness'
  s.version          = '1.4.0'
  s.summary          = 'Basic extensions to make Swift a little sweeter.'
  s.description      = <<-DESC
      SwiftySweetness adds extensions to Swift to improve functionality and make tasks simpler.
  DESC
  s.homepage         = 'https://github.com/cszatma/SwiftySweetness'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Christopher Szatmary' => 'cs@christopherszatmary.com' }
  s.source           = { :git => 'https://github.com/cszatma/SwiftySweetness.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'
  s.source_files = 'Sources/**/*.{swift}'
  s.frameworks = 'Foundation'
  s.ios.framework = 'UIKit'
  s.osx.framework = 'AppKit'
end
