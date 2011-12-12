# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
require './lib/omniauth-xing/version.rb'
Jeweler::Tasks.new do |gem|
  gem.name        = "omniauth-xing"
  gem.homepage    = "http://github.com/roccoblues/omniauth-xing"
  gem.license     = "MIT"
  gem.summary     = %Q{XING strategy for OmniAuth.}
  gem.description = %Q{XING strategy for OmniAuth.}
  gem.email       = "dennis@blogma.de"
  gem.authors     = ["Dennis Schoen"]
  gem.version     = Omniauth::Xing::VERSION
  gem.add_dependency 'omniauth-oauth', '~> 1.0.0'
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

require 'rcov/rcovtask'
Rcov::RcovTask.new do |test|
  test.libs << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
  test.rcov_opts << '--exclude "gems/*"'
end

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "omniauth-xing #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
