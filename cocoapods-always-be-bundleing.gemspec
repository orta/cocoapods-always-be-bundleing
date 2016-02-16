# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocoapods-always-be-bundleing/gem_version.rb'

Gem::Specification.new do |spec|
  spec.name          = 'cocoapods-always-be-bundleing'
  spec.version       = CocoapodsAlwaysBeBundleing::VERSION
  spec.authors       = ['Orta Therox']
  spec.email         = ['orta.therox@gmail.com']
  spec.description   = "Don't allow usage of just `pod install` - require that you use it through `bundle exec pod install`"
  spec.summary       = "Doing a simple `pod install` will use the latest version of CocoaPods - this plugin requires that you use it through `bundle exec pod install` instead, ensuring you always have the right versions from the Gemfile.lock."
  spec.homepage      = 'https://github.com/orta/cocoapods-always-be-bundleing'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
