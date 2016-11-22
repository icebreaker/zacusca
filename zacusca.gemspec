# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zacusca/version'

Gem::Specification.new do |spec|
  spec.name          = "zacusca"
  spec.version       = Zacusca::VERSION
  spec.authors       = ["Mihail Szabolcs"]
  spec.email         = ["me@mihail.co"]

  spec.summary       = "Turns your project into zacusca."
  spec.description   = "It turns any Rails project into some very good zacusca."
  spec.homepage      = "https://github.com/icebreaker/zacusca"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
