# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'brazilian_forgery/version'

Gem::Specification.new do |spec|
  spec.name          = 'brazilian_forgery'
  spec.version       = BrazilianForgery::VERSION
  spec.authors       = ['Felipe Fontoura']
  spec.email         = ['felipe@internetsistemas.com.br']

  spec.summary       = %q{A Brazilian Forgery gem extention}
  spec.description   = %q{Forgery extention with a tons of Brazilian things like names, cities, ...}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split('\x0').reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.8'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'forgery'
end
