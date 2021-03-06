#
# Be sure to run `pod lib lint lihcPodDemo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'lihcPodDemo'
  s.version          = '0.1.0'
  s.summary          = 'lihcPodDemo is a demo to test public pod.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/xiaochun0618/lihcPodDemo'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lihc' => 'lihc@fenbi.com' }
  s.source           = { :git => 'https://github.com/xiaochun0618/lihcPodDemo.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'lihcPodDemo/Classes/**/*'
  
  # s.resource_bundles = {
  #   'lihcPodDemo' => ['lihcPodDemo/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
