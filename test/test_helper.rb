# coding: utf-8
require 'syntect'
require 'minitest/autorun'
require 'minitest/pride'

include Syntect

FIXTURES_DIR = File.join(File.dirname(__FILE__), 'fixtures')
