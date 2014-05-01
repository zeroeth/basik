# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'basik/version'

Gem::Specification.new do |spec|
  spec.name          = "basik"
  spec.version       = Basik::VERSION
  spec.authors       = ["Kevin Alford"]
  spec.email         = ["zeroeth@pixelflow.org"]
  spec.description   = %q{Write a gem description}
  spec.summary       = %q{Write a gem summary}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files = %w[
    Rakefile
    ext/basik/extconf.rb
    ext/basik/basik.c
    lib/basik/version.rb
    lib/basik.rb
  ]

  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib", "ext"]

  spec.extensions = %w[ext/basik/extconf.rb]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
