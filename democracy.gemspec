# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'democracy/version'

Gem::Specification.new do |spec|
  spec.name          = "democracy"
  spec.version       = Democracy::VERSION
  spec.authors       = ["Peak Xu"]
  spec.email         = ["peak.xu@gmail.com"]
  spec.summary       = %q{Will of the people! Implements various voting algorithms.}
  spec.description   = %q{Helpful for every decision from determining today's lunch choice to the fate of the universe. Make sure everyone has their say.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
