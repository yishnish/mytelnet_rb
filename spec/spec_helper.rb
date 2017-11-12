$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

if ENV['CI']
  require 'simplecov'
  SimpleCov.start

  require 'codecov'
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
end

require 'mytelnet_rb'
