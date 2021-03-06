# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'odata/model/version'

Gem::Specification.new do |spec|
  spec.name          = 'odata-model'
  spec.version       = OData::Model::VERSION
  spec.authors       = ['James Thompson']
  spec.email         = %w{james@buypd.com}
  spec.summary       = 'A basic mapping layer for the OData gem'
  spec.description   = 'A mapping layer for the OData gem that can integrate with ActiveModel'
  spec.homepage      = 'https://github.com/ruby-odata/odata-model'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w{lib}

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'simplecov', '~> 0.9.0'
  spec.add_development_dependency 'codeclimate-test-reporter'
  spec.add_development_dependency 'rspec', '~> 3.0.0'
  spec.add_development_dependency 'activemodel', '>= 3.0.0'

  spec.add_dependency 'odata', '~> 0.6.0'
  spec.add_dependency 'activesupport', '>= 3.0.0'

  spec.add_dependency 'slop', '~> 3.6.0'
end
