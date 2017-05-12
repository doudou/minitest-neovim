# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'minitest/neovim/version'

Gem::Specification.new do |spec|
  spec.name          = "minitest-neovim"
  spec.version       = Minitest::Neovim::VERSION
  spec.authors       = ["Sylvain Joyeux"]
  spec.email         = ["sylvain.joyeux@m4x.org"]

  spec.summary       = %q{Fixes running minitest tests in vim-dispatch-neovim using neovim's terminal}
  spec.homepage      = "https://github.com/doudou/minitest-neovim"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
