# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gb/version'

Gem::Specification.new do |gem|
  gem.name          = "gb"
  gem.version       = Gb::VERSION
  gem.authors       = ["Jeff Remer"]
  gem.email         = ["jeff@threestrachina.com"]
  gem.description   = %q{GB: Git Branch Helper}
  gem.summary       = %q{GB (Git Branch) is a small utility for working with git branches}
  gem.homepage      = "https://github.com/jeffremer/gb"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "thor"
  
  gem.add_development_dependency "rspec", "~> 2.6"
end
