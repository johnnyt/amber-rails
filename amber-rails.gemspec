# -*- encoding: utf-8 -*-
require File.expand_path('../lib/amber/rails/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "amber-rails"
  s.version     = Amber::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = %w[ JohnnyT ]
  s.email       = %w[ johnnyt@xan.do ]
  s.homepage    = 'http://github.com/johnnyt/amber-rails'
  s.summary     = 'Rails 3 engine that exposes Amber (JS, CSS, and WebDAV)'

  s.add_dependency "rails", ">= 3.1"
  s.add_dependency "rack_dav"

  s.add_development_dependency "bundler"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").select{|f| f =~ /^bin/}
  s.require_path = 'lib'
end
