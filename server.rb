#!/usr/bin/env ruby

require "bundler/inline"

gemfile do
  source "https://rubygems.org"
  gem "listen"
end

puts "Start listening..."

Listen.to(".") do |modified, added, removed|
  puts "modified absolute path: #{modified}"
  puts "added absolute path: #{added}"
  puts "removed absolute path: #{removed}"
end.start
sleep
