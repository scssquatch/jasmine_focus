=begin
Copyright 2016 Aaron Baker abaker@sharethrough.com

See the file LICENSE for copying permission.
=end

require "rake/testtask"

Rake::TestTask.new do |test|
  test.libs << "test" << "lib"
  test.pattern = "test/**/*_test.rb"
  test.verbose = true
end

namespace :pre_commit do
  task :ci => [:test]
end

task :ci => [:test]
task :default => [:test]
