require 'rake/extensiontask'

task default: :test

# Packaging
require 'bundler/gem_tasks'

# Gem Spec
gem_spec = Gem::Specification.load('syntect.gemspec')

# Ruby Extension
Rake::ExtensionTask.new('syntect', gem_spec) do |ext|
  ext.lib_dir = File.join('lib', 'syntect')
end

# Testing
require 'rake/testtask'

Rake::TestTask.new('test') do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/test_*.rb'
  t.verbose = true
  t.warning = false
end

task 'test' => :compile
