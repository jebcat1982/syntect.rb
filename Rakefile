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

Rake::Task['clean'].enhance do
  ext_dir = File.join(File.dirname(__FILE__), 'ext', 'syntect', 'syntect')
  Dir.chdir(ext_dir) do
    `cargo clean`
  end
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
