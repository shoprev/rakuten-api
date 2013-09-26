# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rakuten/api/version'

Gem::Specification.new do |spec|
  spec.name          = "rakuten-api"
  spec.version       = Rakuten::Api::VERSION
  spec.authors       = ["shoprev"]
  spec.email         = ["admin@shoprev.net"]
  spec.description   = %q{Ruby Rakuten Web API}
  spec.summary       = %q{Ruby Rakuten Web API}
  spec.homepage      = "https://github.com/shoprev/rakuten-api"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock", "1.11.0"
end
