require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name           = 'ABI32_0_0EXGoogleSignIn'
  s.version        = package['version']
  s.summary        = package['description']
  s.description    = package['description']
  s.license        = package['license']
  s.author         = package['author']
  s.homepage       = package['homepage']
  s.platform       = :ios, '10.0'
  s.source         = { git: 'https://github.com/expo/expo.git' }
  s.source_files   = 'ABI32_0_0EXGoogleSignIn/**/*.{h,m}'
  s.preserve_paths = 'ABI32_0_0EXGoogleSignIn/**/*.{h,m}'
  s.requires_arc   = true

  s.dependency 'ABI32_0_0EXCore'
  s.dependency 'GoogleSignIn', '~> 4.4'
end

  