# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jquery/version'

Gem::Specification.new do |spec|
  spec.name          = "jquery"
  spec.version       = Jquery::VERSION
  spec.authors       = ["Karl Coelho"]
  spec.email         = ["karl.coelho1@gmail.com"]
  spec.summary       = %q{jQuery for Ruby.}
  spec.description   = %q{jQuery for Ruby.}
  spec.homepage      = "http://github.com/karlcoelho/jquery-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "nokogiri", "~> 1.6.1"
  spec.add_development_dependency "rake"
end
