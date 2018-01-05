# frozen_string_literal: true

require 'spec_helper'

describe ERB::FileOut do
  describe '#result' do
    it 'writes the output of the erb template to a temporary file' do
      template    = ERB::FileOut.new("This: <%= 'is' %> Pretty: <%= 'cool' %>")
      result_file = Pathname.new(template.result)
      result      = result_file.read

      expect(result).to eq 'This: is Pretty: cool'

      result_file.unlink
    end
  end
end
