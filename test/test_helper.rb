require 'syntect'
require 'minitest/autorun'
require 'minitest/pride'
require 'linguist/grammars'

include Syntect

FIXTURES_DIR = File.join(File.dirname(__FILE__), 'fixtures')
