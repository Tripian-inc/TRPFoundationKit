Pod::Spec.new do |s|
s.name = 'TRPFoundationKit'
s.version = '2.0.0'
s.summary = 'POD_DESCRIPTION'
s.homepage = 'https://github.com/necatievrenyasar'

s.license =  s.license = { :type => 'MIT', :file => '/Users/evrenyasar/Xcode/TRPFoundationKit/LICENSE' }
s.author = { 'Evren Yaşar' => 'necatievren@gmail.com' }
s.platform = :ios, '10.0'
s.source = { :git => 'https://necatievrenyasar:N-pibolu13@github.com/necatievrenyasar/TRPFoundationKit.git', :tag => '1.0.2' }
s.source_files = 'TRPFoundationKit/**/*'
s.frameworks = 'UIKit'
s.swift_version = "4.2" 
s.requires_arc = true
end