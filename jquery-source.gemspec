# -*- encoding: utf-8 -*-
require File.expand_path('../lib/jquery-source/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Daniel X. Moore"]
  gem.email         = ["yahivin@gmail.com"]
  gem.description   = %q{An asset gem for jquery}
  gem.summary       = %q{The source for jquery as a gem}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "jquery-source"
  gem.require_paths = ["lib"]
  gem.version       = Jquery::Source::VERSION
end
