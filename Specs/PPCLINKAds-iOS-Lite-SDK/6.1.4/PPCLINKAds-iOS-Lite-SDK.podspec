Pod::Spec.new do |spec|
  spec.name         = 'PPCLINKAds-iOS-Lite-SDK'
  spec.version      = '6.1.4'
  spec.license 		= {"type" => "Copyright", "text" => "Copyright 2012 - 2018 PPCLINK. All rights reserved."}
  spec.homepage     = 'http://www.ppclink.com'
  spec.authors      = { 'Do Lam' => 'lamdgbk50@gmail.com' }
spec.summary      = '2019.04.20: Thêm facebook banner và fullscreen'
  spec.source = { :git => "git@bitbucket.org:ppclink/ppclink-ads-ios.git",
  				  :tag => "v#{spec.version}"}	
  
#  spec.frameworks 	= 'UIKit', 'CoreGraphics', 'CoreLocation', 'CoreTelephony', 'EventKit', 'EventKitUI',  'AudioToolbox', 'AVFoundation','CoreMedia', 'EventKit', 'EventKitUI', 'MediaPlayer', 'MessageUI', 'QuartzCore', 'SystemConfiguration', 'CoreMotion'  
  
  spec.resources = "PpclinkAdsIos/Example/PpclinkAdsIos/PPCLINKAds-SDK/*.xib" 
 #spec.resource_bundles = {
  #   'PPCLINKAds-SDK' => ['PPCLINKAds-SDK/**/*.xib']
 #}
  spec.platform = :ios, '10.0'
  spec.source_files = "PpclinkAdsIos/Example/PpclinkAdsIos/PPCLINKAds-SDK/**/*.{h,m,a}"
  spec.vendored_libraries =  "PpclinkAdsIos/Example/PpclinkAdsIos/PPCLINKAds-SDK/**/*.a"
  spec.vendored_frameworks = 'PpclinkAdsIos/Example/PpclinkAdsIos/PPCLINKAds-SDK/*.framework'
  
  spec.exclude_files = "PpclinkAdsIos/Example/PpclinkAdsIos/PPCLINKAds-SDK/MoPub/Adapter_StartApp/**/*.*", "PpclinkAdsIos/Example/PpclinkAdsIos/PPCLINKAds-SDK/MoPub/Adapter_Vungle/**/*.*", "PpclinkAdsIos/Example/PpclinkAdsIos/PPCLINKAds-SDK/MoPub/Adapter_InMobi/**/*.*" 

#  spec.libraries = 'z', 'sqlite3'  
  
#  spec.subspec 'VDFramework' do |s1|
#  	s1.source_files = 'PPCLINKAds-SDK/**/*.{h,m,a}'
#  end
spec.dependency 'Google-Mobile-Ads-SDK', '8.4.0'
 # spec.dependency 'AdColony'
  #spec.dependency 'ADXLibrary', '1.5.16', :git => 'https://adx-developer:developer2017@github.com/adxcorp/ADXLibrary_iOS.git'
 # spec.dependency 'GoogleMobileAdsMediationTeads'
  spec.dependency 'GoogleMobileAdsMediationAppLovin', '10.2.1'
  spec.dependency 'GoogleMobileAdsMediationAdColony', '4.6.0'
  spec.dependency 'GoogleMobileAdsMediationInMobi', '9.1.7'
  #spec.dependency 'GoogleMobileAdsMediationTapjoy'
  spec.dependency 'GoogleMobileAdsMediationUnity', '3.7.1'
  #spec.dependency 'GoogleMobileAdsMediationTestSuite'
  spec.dependency 'PersonalizedAdConsent'
  spec.dependency 'GoogleMobileAdsMediationFacebook', '6.4.1'
  
  spec.xcconfig = { "OTHER_CFLAGS" => "-D __PPCLINKAds_Lite__", "LIBRARY_SEARCH_PATHS" => "\"$(PODS_ROOT)/**\"",
        "HEADER_SEARCH_PATHS" => "\"$(PODS_ROOT)/**\"",  "FRAMEWORK_SEARCH_PATHS" => "\"$(PODS_ROOT)/**\""}
end
