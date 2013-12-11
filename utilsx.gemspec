# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'utilsx/version'

Gem::Specification.new do |spec|
  spec.name          = "utilsx"
  spec.version       = Utilsx::VERSION
  spec.authors       = ["Nicholas X."]
  spec.email         = ["dehengxu@outlook.com"]
  spec.description   = %q{This is a private tool kits!}
  spec.summary       = %q{This is a private tool kits!}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
