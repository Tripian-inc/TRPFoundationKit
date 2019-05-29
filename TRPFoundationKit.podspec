Pod::Spec.new do |s|
s.name = 'TRPFoundationKit'
s.version = '1.0.2'
s.summary = 'POD_DESCRIPTION'
s.homepage = 'https://github.com/necatievrenyasar'

s.license =  s.license = { :type => 'MIT', :file => '/Users/evrenyasar/Xcode/TRPFoundationKit/LICENSE' }
s.author = { 'Evren Yaşar' => 'necatievren@gmail.com' }
s.platform = :ios, '10.0'
s.source = { :git => 'https://necatievrenyasar:N-pibolu13@github.com/necatievrenyasar/TRPFoundationKit.git', :tag => s.version.to_s }
s.source_files = 'TRPFoundationKit/**/*'
s.exclude_files = "TRPFoundationKit/*.plist"
s.frameworks = 'UIKit'

s.requires_arc = true
end