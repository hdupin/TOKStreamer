require 'simplecov'
require 'coveralls'
require "codeclimate-test-reporter"

reporters = [
    (Coveralls::SimpleCov::Formatter if Coveralls.will_run?),
    (CodeClimate::TestReporter::Formatter if CodeClimate::TestReporter.run?)
].compact
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new(reporters)
SimpleCov.start 'rails' unless reporters.empty?