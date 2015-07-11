# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rbooks/version'

Gem::Specification.new do |spec|
  spec.name          = "rbooks"
  spec.version       = Rbooks::VERSION
  spec.authors       = ["akihiro"]
  spec.email         = ["akihiro.uesaka@gmail.com"]
  spec.summary       = %q{rboos is a Web API wrapper which is Rakuten Books Book Search API.}
  spec.description   = %q{You can search books with Rakuten web service.}
  spec.homepage      = "https://github.com/toshogakari/rbooks"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.3"
  spec.add_development_dependency "webmock"
end