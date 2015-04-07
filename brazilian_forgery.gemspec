# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'brazilian_forgery/version'

Gem::Specification.new do |spec|
  spec.name          = 'brazilian_forgery'
  spec.version       = BrazilianForgery::VERSION
  spec.authors       = ['Felipe Fontoura', 'Bruno Casali']
  spec.email         = %w(felipe@internetsistemas.com.br brunoocasali@gmail.com)
  spec.summary       = 'A Brazilian Forgery gem extention'
  spec.description   = 'Forgery extension with a tons of Brazilian things like names, cities, ...'
  spec.license       = 'MIT'
  spec.platform      = Gem::Platform::RUBY
  spec.required_rubygems_version = '>= 1.3.6'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.0.0')

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = %w(lib)

  spec.add_development_dependency 'bundler', '~> 1.8'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'forgery'
end
