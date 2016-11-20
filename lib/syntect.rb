require 'syntect/version'

if RUBY_PLATFORM =~ /(mswin|mingw)/i
  require "syntect/#{RUBY_VERSION.sub(/\.\d+$/, '')}/syntect"
else
  require 'syntect/syntect'
end

begin
  require 'awesome_print'
rescue LoadError; end

module Syntect
  def self.higlight(text)

  end
end
