Pod::Spec.new do |s|
  s.name             = 'BPBorderView'
  s.version          = '0.1.0'
  s.summary          = 'UView subclass with easy borders'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

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
