# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'dotenv'
Dotenv.load

require 'simplecov'
SimpleCov.start

require 'erb/file_out'
