Pod::Spec.new do |spec|
  spec.name         = 'VDFramework' #'PPCLINK-VDFramework-iOS'
  spec.version      = '2.0.1'
  spec.license    = {"type" => "Copyright", "text" => "Copyright 2012 - 2018 PPCLINK. All rights reserved."}
  spec.homepage     = 'http://www.ppclink.com'
  spec.authors      = { 'Do Lam' => 'lamdgbk50@gmail.com' }
  spec.summary      = '2019.11.18: change framework type. 2018.10.02: add funtions get iTunesApplicationIDWith URL; demo create pod spec; 2018.04.20: Support Off Popup khi TryNowText empty; 2017.10.09: Fix crash at: getListOfNotificationWithAdImageType; Fix isInstallAppId de chac chan chay o mainthread; Fix crash bug when build in xcode 9; Add more interstitial ad free time when popup ad show; Add config: InterstitialAdMaxTimePerSession, add notify kNotifyJustShowPopupAd; Add getAPPCLINKNativeAd, NTYPE_MESSAGE: Highest priority. Update libVDConfigNotification-1.8.28: Fix crash bug on Swift prj'
  spec.source = { :http => "https://github.com/pvddeveloper/VDFramework/raw/master/VDFramework.zip" }# "https://bitbucket.org/ppclink/vdframework-sample-prj-ios/raw/fc1b01ac390f153bdef760d050d47f2a969d7cc3/VDFrameworkBuildFolder/VDFramework.zip"}
  #spec.source = { :git => "git@bitbucket.org:ppclink/vdframework-sample-prj-ios.git",
  #          :tag => "v#{spec.version}"}
  
  spec.platform = :ios, '9.0'
 # spec.source_files = "**/VDFramework.{zip}"
   spec.vendored_frameworks = 'VDFramework.framework'
  spec.public_header_files = ["VDFramework.framework/Headers/*.h"]
  spec.frameworks = 'VDFramework'
  spec.xcconfig = { "FRAMEWORK_SEARCH_PATHS"=> "\"$(PODS_ROOT)/VDFramework\"" }

 # spec.xcconfig = { "LIBRARY_SEARCH_PATHS" => "\"$(PODS_ROOT)/PPCLINK-VDFramework-iOS/**\"",
 #       "HEADER_SEARCH_PATHS" => "\"$(PODS_ROOT)/PPCLINK-VDFramework-iOS/**\"",  "FRAMEWORK_SEARCH_PATHS" => "\"$(PODS_ROOT)/PPCLINK-VDFramework-iOS/**\""}
end
