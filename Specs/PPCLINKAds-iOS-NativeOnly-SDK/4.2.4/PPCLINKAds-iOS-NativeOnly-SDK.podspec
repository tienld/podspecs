
Pod::Spec.new do |spec|
  spec.name         = 'PPCLINKAds-iOS-NativeOnly-SDK'
  spec.version      = '4.2.4'
  spec.license 		= {"type" => "Copyright", "text" => "Copyright 2012 - 2017 PPCLINK. All rights reserved."}
  spec.homepage     = 'http://www.ppclink.com'
  spec.authors      = { 'Do Lam' => 'lamdgbk50@gmail.com' }
  spec.summary      = '2020.04.20: Thêm fb banner, fullscreen'
  
  
  spec.source = { :git => "git@bitbucket.org:ppclink/ppclink-ads-ios.git",
  				  :tag => "v#{spec.version}"}	
  
  spec.weak_frameworks =  'CoreImage'
  
  spec.resources = "PPCLINKAds-SDK/*.xib" 
  spec.platform = :ios, '8.0'
  spec.source_files = "PPCLINKAds-SDK/**/*.{h,m,a}"
  spec.vendored_libraries =  "PPCLINKAds-SDK/**/*.a"
  spec.vendored_frameworks = 'PPCLINKAds-SDK/**/*.framework'
  
  spec.exclude_files = "PPCLINKAds-SDK/MoPub/Adapter_StartApp/**/*.*", "PPCLINKAds-SDK/MoPub/Adapter_Vungle/**/*.*", "PPCLINKAds-SDK/MoPub/Adapter_InMobi/**/*.*" 
  
  spec.dependency 'FBAudienceNetwork'
 # spec.dependency 'mopub-ios-sdk'
  spec.dependency 'Google-Mobile-Ads-SDK'
  
  spec.xcconfig = {"OTHER_CFLAGS" => "-D __PPCLINKAds_NativeOnly__", "LIBRARY_SEARCH_PATHS" => "\"$(PODS_ROOT)/**\"", "HEADER_SEARCH_PATHS" => "\"$(PODS_ROOT)/**\"",  "FRAMEWORK_SEARCH_PATHS" => "\"$(PODS_ROOT)/**\""}
end
