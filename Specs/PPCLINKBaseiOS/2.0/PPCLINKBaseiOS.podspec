#
# Be sure to run `pod lib lint PPCLINKBaseiOS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PPCLINKBaseiOS'
   s.version          = '2.0'
   s.summary          = 'A short description of PPCLinkBaseiOS.'
   s.swift_version = '4.0'
 # This description is used to generate tags and improve search results.
 #   * Think: What does it do? Why did you write it? What is the focus?
 #   * Try to keep it short, snappy and to the point.
 #   * Write the description between the DESC delimiters below.
 #   * Finally, don't worry about the indent, CocoaPods strips it!

   s.description      = <<-DESC
 TODO: Add long description of the pod here.
                        DESC

   s.homepage         = 'https://github.com/adx-developer/PPCLINKBaseiOS'
   # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
   s.license          = { :type => 'MIT', :file => 'LICENSE' }
   s.author           = { 'adx-developer' => 'pvddeveloper@gmail.com' }
   s.source           = { :git => 'git@github.com:ppclink/PPCLINKBaseiOS.git', :tag => "v#{s.version}" }
   # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

   s.ios.deployment_target = '9.0'

   s.source_files = 'PPCLINKBaseiOS/Classes/**/*'
    s.platform = :ios, "10.0"
   # s.resource_bundles = {
   #   'PPCLinkBaseiOS' => ['PPCLinkBaseiOS/Assets/*.png']
   # }

   # s.public_header_files = 'Pod/Classes/**/*.h'
   # s.frameworks = 'UIKit', 'MapKit'
   # s.dependency 'AFNetworking', '~> 2.3'
   s.static_framework = true
   #s.dependency 'FirebaseAnalytics'
  # s.dependency 'SwiftyJSON', '~> 4.0'
end
