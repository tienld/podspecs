Pod::Spec.new do |spec|
  spec.name         = 'PPCLINKAds-iOS-SDK'
  spec.version      = '3.0.7'
  spec.license 		= {"type" => "Copyright", "text" => "Copyright 2012 - 2018 PPCLINK. All rights reserved."}
  spec.homepage     = 'http://www.ppclink.com'
  spec.authors      = { 'Do Lam' => 'lamdgbk50@gmail.com' }
spec.summary      = 'PPCLINKAds-iOS-SDK (2018.10.23: Update với sdk mới của mopub, facebook và google. Thêm phương thức tạo native ads mới.)'
  
  spec.source = { :git => "git@bitbucket.org:ppclink/ppclink-ads-ios.git",
  				  :tag => "v#{spec.version}"}	
  
#  spec.frameworks 	= 'UIKit', 'CoreGraphics', 'CoreLocation', 'CoreTelephony', 'EventKit', 'EventKitUI',  'AudioToolbox', 'AVFoundation','CoreMedia', 'EventKit', 'EventKitUI', 'MediaPlayer', 'MessageUI', 'QuartzCore', 'SystemConfiguration', 'CoreMotion'  
  spec.weak_frameworks =  'CoreImage'
  
  spec.resources = "PPCLINKAds-SDK/**/*.{bundle}"	
  spec.platform = :ios, '8.0'
  spec.source_files = "PPCLINKAds-SDK/**/*.{h,m,a}"
  spec.vendored_libraries =  "PPCLINKAds-SDK/**/*.a"
  spec.vendored_frameworks = 'PPCLINKAds-SDK/**/*.framework'
  
  spec.exclude_files = "PPCLINKAds-SDK/MoPub/Adapter_StartApp/**/*.*", "PPCLINKAds-SDK/MoPub/Adapter_Vungle/**/*.*", "PPCLINKAds-SDK/MoPub/Adapter_InMobi/**/*.*" 

#  spec.libraries = 'z', 'sqlite3'  
  
#  spec.subspec 'VDFramework' do |s1|
#  	s1.source_files = 'PPCLINKAds-SDK/**/*.{h,m,a}'
#  end
#  spec.dependency 'PPCLINK-VDFramework-iOS'
  #spec.dependency 'FBAudienceNetwork', '4.99.2'
  spec.dependency 'Google-Mobile-Ads-SDK'
 # spec.dependency 'mopub-ios-sdk', '5.4.0'
  spec.dependency 'MoPub-FacebookAudienceNetwork-Adapters', '4.99.2.1'
  spec.dependency 'AdColony', '3.3.5'
#  spec.dependency 'ChartboostSDK'
#  spec.dependency 'InMobiSDK'
#  spec.dependency 'VungleSDK-iOS'
  
  spec.xcconfig = { "LIBRARY_SEARCH_PATHS" => "\"$(PODS_ROOT)/**\"",
        "HEADER_SEARCH_PATHS" => "\"$(PODS_ROOT)/**\"",  "FRAMEWORK_SEARCH_PATHS" => "\"$(PODS_ROOT)/**\""}
end
