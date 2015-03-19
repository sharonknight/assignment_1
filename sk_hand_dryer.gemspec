# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sk_hand_dryer/version'

Gem::Specification.new do |spec|
  spec.name          = "sk_hand_dryer"
  spec.version       = SkHandDryer::VERSION
  spec.authors       = ["sharonknight"]
  spec.email         = ["sharon.e.knight@gmail.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = ": Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.summary       = %q{Dry your hands from the terminal!.}
  spec.description   = %q{Sechez vos mains du terminale!}
  spec.homepage      = "http:/www.github.com/sharonknight"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
