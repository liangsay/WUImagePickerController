Pod::Spec.new do |s|
  s.name         = "WUImagePickerController"
  s.version      = "3.8.6"
  s.summary      = "A clone of UIImagePickerController, support picking multiple photos、original photo and video"
  s.homepage     = "https://github.com/liangsay/WUImagePickerController"
  s.license      = "MIT"
  s.author       = { "banchichen" => "tanzhenios@foxmail.com" }
  s.platform     = :ios
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/liangsay/WUImagePickerController.git", :branch => "3.8.6" }
  s.requires_arc = true

  s.subspec 'Basic' do |b|
    b.resources    = "TZImagePickerController/TZImagePickerController/*.{png,bundle}"
    b.source_files = "TZImagePickerController/TZImagePickerController/*.{h,m}"
  end

  s.subspec 'Location' do |l|
    l.source_files = 'TZImagePickerController/Location/*.{h,m}'
  end

  s.frameworks   = "Photos", "PhotosUI"
end
