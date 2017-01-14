# frozen_string_literal: true
# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'erb/file_out/version'

Gem::Specification.new do |spec|
  spec.name          = 'erb-file_out'
  spec.version       = ERB::FileOut::VERSION
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

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.46'
  spec.add_development_dependency 'dotenv', '~> 2.1.1'
  spec.add_development_dependency 'simplecov', '~> 0.12'
  spec.add_development_dependency 'codeclimate-test-reporter', '~> 1.0.0'
end
