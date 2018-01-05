# frozen_string_literal: true
# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'erb-file_out'
  spec.version       = File.read(File.expand_path('../VERSION', __FILE__)).strip
  spec.authors       = ['Ian C. MacDonald']
  spec.email         = ['ian@iancmacdonald.com']

  spec.summary       = 'Store ERB result on disc instead of in memory'
  spec.description   = <<~DESC
                         By default, ERB compiles a script from the template and stores the result as a string in memory.
                         This is not great when dealing with templates that could end up being very large after
                         rendering. ERB::FileOut provides a way to write the result of a template to disk instead of
                         storing it in memory.
                       DESC
  spec.homepage      = 'https://github.com/matchbookmac/erb-file_out'
  spec.license       = 'MIT'

  spec.files         = Dir['lib/**/*.rb']
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'dotenv'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'codeclimate-test-reporter'
end
