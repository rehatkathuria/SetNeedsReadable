#
# Be sure to run `pod lib lint SetNeedsReadable.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SetNeedsReadable'
  s.version          = '2.2'
  s.summary          = 'Helpful extensions for CGFloat and UIView aimed to enhance readability of layout code.'
  s.homepage         = 'https://github.com/rehatkathuria/SetNeedsReadable'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'rehatkathuria' => 'rehat@kathuria.co' }
  s.source           = { :git => 'https://github.com/rehatkathuria/SetNeedsReadable.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/rhtkth'
  s.ios.deployment_target = '8.0'
  s.source_files = 'Sources/**/*'
  s.frameworks = 'UIKit'
end
