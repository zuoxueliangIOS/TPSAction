Pod::Spec.new do |s|

  s.name         = "TPSAction"
  s.version      = "0.0.1"
  s.summary      = "A marquee view used on iOS."


  s.description  = <<-DESC
			继承某些属性
                   DESC

  s.homepage     = "https://github.com/zuoxueliangIOS/TPSAction.git"
  s.license      = 'MIT'
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  # 版权声明

  s.author             = { "xlzuo" => "xlzuo@ctrip.com" }

  s.platform     = :ios, '7.0'
  # 系统支持的版本 OSX or iOS or tvOS

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"
  # 只能支持这一个系统

  s.source       = { :git => "https://github.com/zuoxueliangIOS/TPSAction.git", :tag => s.version.to_s }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  s.source_files = 'TPSACTion/TPSMessageAction/*'
  #  s.exclude_files = "Classes/Exclude"
  # s.public_header_files = "Classes/**/*.h"


  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"
  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"
  # 资源文件

   s.framework  = 'Foundation'
  # s.frameworks = "SomeFramework", "AnotherFramework"
  # 需要支持的类库和框架 

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"
  # 图标 和 xml plist这些资源文件的存放处

  s.requires_arc = true
  # 访问的机制

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/includebxml2" }
  # s.dependency "JSONKit", "~> 1.4"
  # 依赖的第三方库
end
