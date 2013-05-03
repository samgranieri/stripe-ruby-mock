# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stripe_mock/version'

Gem::Specification.new do |gem|
  gem.name          = "stripe-ruby-mock"
  gem.version       = StripeMock::VERSION
  gem.summary       = %q{TDD with stripe}
  gem.description   = %q{A drop-in library to test stripe without hitting their servers}
  gem.license       = "MIT"
  gem.authors       = ["Gilbert"]
  gem.email         = "gilbertbgarza@gmail.com"
  gem.homepage      = "https://github.com/mindeavor/stripe-ruby-mock"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_runtime_dependency 'stripe'

  gem.add_development_dependency 'bundler', '~> 1.3'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'guard'
  gem.add_development_dependency 'guard-rgem'
  gem.add_development_dependency 'guard-bundler'
  gem.add_development_dependency 'simplecov'
end
