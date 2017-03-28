# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

source 'https://github.com/travel-iLabsTechTalk/Specs.git'
source 'https://github.com/CocoaPods/Specs.git'

def publicPods
  #pod 'samePodName'
end

def privatePods
  #pod "TTLogin_Category", :path => "../TTLogin_Category"
  pod "TTLogin_Category"
  
  #pod "TTLogin", :path => "../TTLogin"
  pod "TTLogin"
end

target 'TTComponentized' do
  # Uncomment the next line if you're using Swift or would like to use dynamic frameworks
  # use_frameworks!
  publicPods
  privatePods
end
