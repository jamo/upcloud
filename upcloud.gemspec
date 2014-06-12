# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'upcloud/version'

Gem::Specification.new do |spec|
  spec.name          = "upcloud"
  spec.version       = Upcloud::VERSION
  spec.authors       = ["Jarmo Isotalo"]
  spec.email         = ["jamo@isotalo.fi"]
  spec.summary       = %q{Command line cli for upcloud.fi api}
  #spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = "jamox.github.io/upcloud"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "httparty", "~>0.13.1"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
