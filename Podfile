# coding: utf-8
platform :ios, '10.0'

#解决重复生成uuid问题
install! 'cocoapods', :deterministic_uuids => false
#禁止展示pod命令产生的警告
inhibit_all_warnings!
use_modular_headers!

#source 'git@git.kanzhun-inc.com:rd9/dianzhangzpspec.git'
source 'https://github.com/CocoaPods/Specs.git'

target 'SPOS' do
#  use_frameworks! :linkage => :static
  
  pod 'SwifterSwift'
  pod "Device"
  pod 'SwiftHash'

  pod 'DZKoinSwift', :path => './DZKoinSwift', :inhibit_warnings => false
  pod 'DZModelA',:path => './DZModelA', :inhibit_warnings => false
#  pod 'DZUserDataSwift', :path => './DZUserDataSwift', :inhibit_warnings => false
  pod 'DZNetworkSwift', :path => './DZNetworkSwift', :inhibit_warnings => false
  
  pod 'DZKoinProtocols', :path => './DZKoinProtocols',:inhibit_warnings => false
  

  target 'SPOSTests' do
    inherit! :search_paths
    # Pods for testingi
  end

  target 'SPOSUITests' do
    # Pods for testing
  end

end
