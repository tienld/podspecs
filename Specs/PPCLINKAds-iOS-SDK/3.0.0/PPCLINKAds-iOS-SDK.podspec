Pod::Spec.new do |spec|
  spec.name         = 'PPCLINKAds-iOS-SDK'
  spec.version      = '3.0.0'
  spec.license 		= {"type" => "Copyright", "text" => "Copyright 2012 - 2017 PPCLINK. All rights reserved."}
  spec.homepage     = 'http://www.ppclink.com'
  spec.authors      = { 'Do Lam' => 'lamdgbk50@gmail.com' }
spec.summary      = 'PPCLINKAds-iOS-SDK (2017.11.29: Fix banner ad bugs; 2017.11.10: Support Admob Advanced native ad & admob reward video ad; Banner ad bugs fixed. Add max time show interstitial ad per session;  Fix bug not show admob ad on iPad; Support fullscreen ad on iPhone4s, check PT_PAID: stop init/request ad,  getNativeAdInfoToShow: support PPCLINK Native Ad, cache old fb native ad, fix bugs (support Vungle, show Interstitial ad:Support callback code block, Support Adcolony 3.x, update setProductType)'
  
  spec.source = { :git => "git@bitbucket.org:ppclink/ppclink-ads-ios.git",
  				  :tag => "v#{spec.version}"}	
  
#  spec.frameworks 	= 'UIKit', 'CoreGraphics', 'CoreLocation', 'CoreTelephony', 'EventKit', 'EventKitUI',  'AudioToolbox', 'AVFoundation','CoreMedia', 'EventKit', 'EventKitUI', 'MediaPlayer', 'MessageUI', 'QuartzCore', 'SystemConfiguration', 'CoreMotion'  
  spec.weak_frameworks =  'CoreImage'
  
  spec.resources = "PPCLINKAds-SDK/**/*.{bundle}"	
  spec.platform = :ios, '7.0'
  spec.source_files = "PPCLINKAds-SDK/**/*.{h,m,a}"
  spec.vendored_libraries =  "PPCLINKAds-SDK/**/*.a"
  spec.vendored_frameworks = 'PPCLINKAds-SDK/**/*.framework'
  
  spec.exclude_files = "PPCLINKAds-SDK/MoPub/Adapter_StartApp/**/*.*", "PPCLINKAds-SDK/MoPub/Adapter_Vungle/**/*.*", "PPCLINKAds-SDK/MoPub/Adapter_InMobi/**/*.*" 

#  spec.libraries = 'z', 'sqlite3'  
  
#  spec.subspec 'VDFramework' do |s1|
#  	s1.source_files = 'PPCLINKAds-SDK/**/*.{h,m,a}'
#  end
#  spec.dependency 'PPCLINK-VDFramework-iOS'
  spec.dependency 'FBAudienceNetwork'
  spec.dependency 'Google-Mobile-Ads-SDK'
  spec.dependency 'mopub-ios-sdk'
  spec.dependency 'AdColony'
#  spec.dependency 'ChartboostSDK'
#  spec.dependency 'InMobiSDK'
  spec.dependency 'VungleSDK-iOS'
  
  spec.xcconfig = { "LIBRARY_SEARCH_PATHS" => "\"$(PODS_ROOT)/**\"",
        "HEADER_SEARCH_PATHS" => "\"$(PODS_ROOT)/**\"",  "FRAMEWORK_SEARCH_PATHS" => "\"$(PODS_ROOT)/**\""}
end
