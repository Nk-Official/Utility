

Pod::Spec.new do |spec|

  
  spec.name         = "Utility"
  spec.version      = "1.0.0"
  spec.summary      = "This contains common functions used in almost every Application"


  spec.description  = "This contains common functions used in almost every Application. Added parameters on Viewcontroller, View, String, TextField etc."
                  

  spec.homepage     = "https://github.com/Nk-Official"


 

  spec.license      = "MIT"
  # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  spec.author             = { "Nk-Official" => "namrataofficial110@gmail.com" }
  

   spec.platform     = :ios,"9.0"

  
  spec.source       = { :git => "https://github.com/Nk-Official/Utility.git", :tag => "1.0.0" }


  

  spec.source_files  = "Utility"
  spec.exclude_files = "Classes/Exclude"

    # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"



  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"
spec.swift_version = "5" 

end
