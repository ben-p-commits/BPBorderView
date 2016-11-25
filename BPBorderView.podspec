Pod::Spec.new do |s|
  s.name             = 'BPBorderView'
  s.version          = '1.0.0'
  s.summary          = 'UView subclass with easy borders'
  
  s.description      = <<-DESC
UView subclass with easy borders. Allows addition of borders with composable flags on view initilization. Customize position, width, and color.
                       DESC

  s.homepage         = 'https://github.com/bengovernment/BPBorderView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ben Palmer' => 'benj.c.palmer@gmail.com' }
  s.source           = { :git => 'https://github.com/bengovernment/BPBorderView.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/bengovernment'

  s.ios.deployment_target = '8.0'
  s.source_files = 'BPBorderView/Classes/**/*'

end
