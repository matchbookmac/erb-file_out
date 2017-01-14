# frozen_string_literal: true

require 'erb'
require 'tempfile'
require 'erb/file_out/version'

class ERB
  class FileOut < ERB
    def set_eoutvar(compiler, eoutvar = '_erbout')
      compiler.put_cmd = "#{eoutvar}.write"
      compiler.insert_cmd = "#{eoutvar}.write"
      compiler.pre_cmd = ["#{eoutvar} = Tempfile.create('_erbout', encoding: __ENCODING__)"]
      compiler.post_cmd = ["#{eoutvar}.close", "#{eoutvar}.path"]
    end
  end
end
