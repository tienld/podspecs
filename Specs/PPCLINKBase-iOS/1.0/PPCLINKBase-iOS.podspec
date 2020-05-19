Pod::Spec.new do |spec|
  spec.name         = 'PPCLINKBase-iOS'
  spec.version      = '1.0'
  spec.license 		= {"type" => "Copyright", "text" => "Copyright 2012 - 2020 PPCLINK. All rights reserved."}
  spec.homepage     = 'http://www.ppclink.com'
  spec.authors      = { 'Do Lam' => 'lamdgbk50@gmail.com' }
spec.summary      = '2020.05.14: Khởi tạo, ppclink analytics'
  
  spec.source = { :git => "git@bitbucket.org:phamdiep68/ppclinkbase-ios.git",
  				  :tag => "v#{spec.version}"}	
  
#  spec.frameworks 	= 'UIKit', 'CoreGraphics', 'CoreLocation', 'CoreTelephony', 'EventKit', 'EventKitUI',  'AudioToolbox', 'AVFoundation','CoreMedia', 'EventKit', 'EventKitUI', 'MediaPlayer', 'MessageUI', 'QuartzCore', 'SystemConfiguration', 'CoreMotion'  
 # spec.weak_frameworks =  'CoreImage'
  
 # spec.resources = "PPCLINKAds-SDK/*.xib"	
 #spec.resource_bundles = {
  #   'PPCLINKAds-SDK' => ['PPCLINKAds-SDK/**/*.xib']
 #}
  spec.platform = :ios, '9.0'
  spec.source_files = "PPCLINKBase-iOS/PPCLINKBase/*.*"
 # spec.vendored_libraries =  "PPCLINKAds-SDK/**/*.a"
  #spec.vendored_frameworks = 'PPCLINKAds-SDK/**/*.framework'
  
  #spec.exclude_files = "PPCLINKAds-SDK/MoPub/Adapter_StartApp/**/*.*", "PPCLINKAds-SDK/MoPub/Adapter_Vungle/**/*.*", "PPCLINKAds-SDK/MoPub/Adapter_InMobi/**/*.*" 

  #spec.dependency 'Google-Mobile-Ads-SDK'
 # spec.dependency 'mopub-ios-sdk'
 # spec.dependency 'FBAudienceNetwork', '5.6.1'
 spec.static_framework = true
  spec.dependency 'Firebase/Analytics'
end
