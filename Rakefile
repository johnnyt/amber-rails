#!/usr/bin/env rake

bundler_installed = !!(%x[gem list] =~ /bundler/)

desc "Setup the local environment"
task :setup do
  sh %Q!gem install bundler --pre --no-ri --no-rdoc! unless bundler_installed
  sh %Q!bundle install!
  puts "Done!"
end

if bundler_installed
  require 'bundler'
  Bundler::GemHelper.install_tasks
end
