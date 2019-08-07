# Uncomment the next line to define a global platform for your project
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'

target 'lalala' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Flash Chat
  pod 'Firebase'
  pod 'Firebase/Auth'
  pod 'Firebase/Database'
  pod 'SVProgressHUD'
  pod 'ChameleonFramework'
  pod "RichTextVC-iOS"
  pod 'RichEditorView', '~> 5.0'
  pod 'CardParts'
  

end

post_install do |installer|
  
  installer.pods_project.targets.each do |target|
    
    target.build_configurations.each do |config|
      
      config.build_settings['CLANG_WARN_DOCUMENTATION_COMMENTS'] = 'NO'
      
    end
    
  end
  
end
