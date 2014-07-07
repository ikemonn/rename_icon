# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rename_icon/version'

Gem::Specification.new do |spec|
  spec.name          = "rename_icon"
  spec.version       = RenameIcon::VERSION
  spec.authors       = ["ikemonn"]
  spec.email         = ["ikemoto.daiki@gmail.com"]
  spec.summary       = %q{To rename icon for iOS App.}
  spec.description   = %q{To rename icon for iOS App.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency "image_size"
  spec.add_runtime_dependency "thor"
end
