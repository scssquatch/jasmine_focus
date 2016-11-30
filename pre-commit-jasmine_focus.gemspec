=begin
Copyright 2016 Aaron Baker abaker@sharethrough.com

See the file LICENSE for copying permission.
=end

# -*- encoding: utf-8 -*-

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pre-commit/jasmine_focus/version'

Gem::Specification.new do |s|
  s.name     = "pre-commit-jasmine_focus"
  s.version  = PreCommit::JasmineFocus::VERSION
  s.author   = "Aaron Baker"
  s.email    = "abaker@sharethrough.com"
  s.homepage = "https://github.com/pre-commit-plugins/pre-commit-jasmine_focus"
  s.license  = "MIT"
  s.summary  = "Checks if you accidentally checked in ddescribe or iit"

  s.extra_rdoc_files = ["README.md"]
  s.files = Dir["lib/**/*"]

  s.add_dependency("pre-commit")

  s.add_development_dependency("guard", "~> 2.0")
  s.add_development_dependency("guard-minitest", "~> 2.0")
  s.add_development_dependency("minitest", "~> 4.0")
  s.add_development_dependency("minitest-reporters", "~> 0")
  s.add_development_dependency("mocha", "~>1.1")
  s.add_development_dependency("rake", "~> 10.0")
end
