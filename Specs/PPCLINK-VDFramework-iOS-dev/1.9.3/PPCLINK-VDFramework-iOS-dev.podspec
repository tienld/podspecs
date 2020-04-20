Pod::Spec.new do |spec|
  spec.name         = 'PPCLINK-VDFramework-iOS'
  spec.version      = '1.9.1'
  spec.license 		= {"type" => "Copyright", "text" => "Copyright 2012 - 2017 PPCLINK. All rights reserved."}
  spec.homepage     = 'http://www.ppclink.com'
  spec.authors      = { 'Do Lam' => 'lamdgbk50@gmail.com' }
  spec.summary      = '2017.01.10: Add getAPPCLINKNativeAd, NTYPE_MESSAGE: Highest priority. Update libVDConfigNotification-1.8.28: Fix crash bug on Swift prj'
  
  spec.source = { :git => "git@bitbucket.org:ppclink/vdframework-ios.git",
  				  :tag => "v#{spec.version}"}
  				  
#  spec.source_files = "**/*.{h,m,a}"
#  spec.vendored_libraries =  "**/*.a"
  
  spec.requires_arc = false
    
  spec.dependency 'Reachability'
  spec.dependency 'UIDevice-Hardware'
    
  spec.xcconfig = { "LIBRARY_SEARCH_PATHS" => "\"$(PODS_ROOT)/PPCLINK-VDFramework-iOS/**\"",
        "HEADER_SEARCH_PATHS" => "\"$(PODS_ROOT)/PPCLINK-VDFramework-iOS/**\"",  "FRAMEWORK_SEARCH_PATHS" => "\"$(PODS_ROOT)/PPCLINK-VDFramework-iOS/**\""}
end
