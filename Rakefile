# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'dotenv/tasks'

RSpec::Core::RakeTask.new(:spec)

task default: :spec

task post_spec_hook: :dotenv do
  at_exit {
    `codeclimate-test-reporter`
  }
end

Rake::Task['spec'].enhance(['post_spec_hook'])
