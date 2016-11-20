require 'rbconfig'
# ruby 1.8.7 doesn't define RUBY_ENGINE
ruby_engine = defined?(RUBY_ENGINE) ? RUBY_ENGINE : 'ruby'
ruby_version = RbConfig::CONFIG["ruby_version"]
path = File.expand_path('..', __FILE__)
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/rake-10.5.0/lib"
$:.unshift "#{path}/"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/minitest-5.9.1/lib"
$:.unshift "#{path}/../#{ruby_engine}/#{ruby_version}/gems/rake-compiler-0.9.9/lib"
$:.unshift "#{path}/../../../lib"
$:.unshift "#{path}/../../../ext"
