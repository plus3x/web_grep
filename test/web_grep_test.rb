require_relative 'test_helper'
require 'tmpdir'

describe WebGrep do
  describe 'CLI' do
    def web_grep(command='')
      `#{Bundler.root}/bin/web_grep #{command}`
    end

    it 'shows --version' do
      web_grep('--version').must_include WebGrep::VERSION
    end

    it 'shows --help' do
      web_grep('--help').must_include 'web_grep'
    end
  end
end