lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'syntect/version'

Gem::Specification.new do |spec|
  spec.name          = 'syntect'
  spec.version       = Syntect::VERSION
  spec.authors       = ['Garen Torikian']
  spec.email         = ['gjtorikian@gmail.com']
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.0.0'

  spec.summary       = %q{TODO: Write a short summary, because Rubygems requires one.}
  spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."

  spec.files         = %w(LICENSE.txt README.md Rakefile syntect.gemspec)
  spec.files        += Dir.glob('lib/**/*.rb')
  spec.files        += Dir.glob('ext/**/*')
  spec.test_files    = Dir.glob('test/**/*')
  spec.extensions    = ['ext/syntect/extconf.rb']

  spec.test_files = spec.files.grep(%r{^test/})
  spec.require_paths = %w(lib ext)

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.6'
  spec.add_development_dependency 'rake-compiler', '~> 0.9'
end
