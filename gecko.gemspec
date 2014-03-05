# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gecko/version'

Gem::Specification.new do |spec|
  spec.name = 'gecko'
  spec.version = Gecko::VERSION
  spec.authors = ["Bradley Priest"]
  spec.email = ['bradley@tradegecko.com']
  spec.description = %q{A Ruby interface to the TradeGecko API.}
  spec.summary = spec.description
  spec.homepage = 'https://github.com/tradegecko/gecko/'
  spec.license = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.test_files = Dir.glob("test/**/*")
  spec.require_paths = ['lib']

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "mocha"

  spec.add_dependency "oauth2"
  spec.add_dependency "virtus"
  spec.add_dependency "activesupport"
end