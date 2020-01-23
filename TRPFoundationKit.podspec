Pod::Spec.new do |s|
s.name = "TRPFoundationKit"
s.version = "1.5.0"
s.summary = "Tripian iOS Framework"
s.homepage = "https://www.tripian.com"
s.license =  s.license = { :type => "BSD" }
s.author = { "Tripian" => "necati@tripian.com" }
s.source       = {
    :http => "https://tripian-mobile-sdk.s3.us-east-2.amazonaws.com/trpfoundationkit/1.5.0/TRPFoundationKit.zip",
    :flatten => true
  }
s.module_name = "TRPFoundationKit"
s.exclude_files = "Classes/Exclude"
s.ios.deployment_target = "11.0"
s.platform = :ios, "11.0"
s.vendored_frameworks = "TRPFoundationKit/TRPFoundationKit.framework"
s.requires_arc = true
s.frameworks = "UIKit"
end
