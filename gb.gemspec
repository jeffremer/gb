# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gb/version'

Gem::Specification.new do |gem|
  gem.name          = "gb"
  gem.version       = Gb::VERSION
  gem.authors       = ["Jeff Remer"]
  gem.email         = ["jeff@threestrachina.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = ["bin/gb"]
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "thor"
  
  gem.add_development_dependency "rspec", "~> 2.6"
end
