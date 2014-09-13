# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'act_as_deleted/version'

Gem::Specification.new do |spec|
  spec.name          = "act_as_deleted"
  spec.version       = ActAsDeleted::VERSION
  spec.authors       = ["gxw"]
  spec.email         = ["alphaguoxiongwei@gmail.com"]
  spec.summary       = "for active-record delete"
  spec.description   = "for the active-record delete"
  spec.homepage      = "https://github.com/littleluren/act_as_deleted"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "railties"

  spec.add_development_dependency "pry"
  spec.add_development_dependency "rails"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"

end
