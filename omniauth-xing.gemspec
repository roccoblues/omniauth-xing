# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-xing/version'

Gem::Specification.new do |s|
  s.name = "omniauth-xing"
  s.version = Omniauth::Xing::VERSION

  s.require_paths = ["lib"]
  s.authors = ["Dennis Schoen"]
  s.date = "2015-12-11"
  s.description = "XING strategy for OmniAuth."
  s.email = "mail@dennis-schoen.de"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    "Gemfile",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "lib/omniauth-xing.rb",
    "lib/omniauth-xing/version.rb",
    "lib/omniauth/strategies/xing.rb",
    "test/omniauth/strategies/test_xing.rb"
  ]
  s.homepage = "http://github.com/roccoblues/omniauth-xing"
  s.licenses = ["MIT"]
  s.summary = "XING strategy for OmniAuth."

  s.add_runtime_dependency "multi_json", ">= 0"
  s.add_runtime_dependency "omniauth-oauth", "~> 1.0"

  s.add_development_dependency "bundler", "~> 1.3"
  s.add_development_dependency "rake", "~> 12.0"
  s.add_development_dependency "minitest", "~> 5.0"
end
