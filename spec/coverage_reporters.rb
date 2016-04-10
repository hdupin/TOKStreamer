require 'simplecov'
require 'coveralls'
require "codeclimate-test-reporter"

reporters = [
    (Coveralls::SimpleCov::Formatter if Coveralls.will_run?),
    (CodeClimate::TestReporter::Formatter if CodeClimate::TestReporter.run?),
    (SimpleCov::Formatter::HTMLFormatter if ENV['COV'])
].compact

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new(reporters)
SimpleCov.start 'rails' unless reporters.empty?