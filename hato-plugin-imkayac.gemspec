# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hato/plugin/imkayac/version'

Gem::Specification.new do |spec|
  spec.name          = "hato-plugin-imkayac"
  spec.version       = Hato::Plugin::ImKayac::VERSION
  spec.authors       = ["Keisuke KITA"]
  spec.email         = ["kei.kita2501@gmail.com"]
  spec.description   = %q{Hato plugin to send messages Via ImKayac}
  spec.summary       = %q{Hato plugin to send messages Via ImKayac}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "hato"
  spec.add_dependency "im-kayac"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
