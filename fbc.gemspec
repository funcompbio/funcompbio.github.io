# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "fbc"
  spec.version       = "0.1.0"
  spec.authors       = ["Robert Castelo"]
  spec.email         = ["robert.castelo@upf.edu"]

  spec.summary       = "Jekyll website for the FBC subject at UPF."
  spec.homepage      = "https://github.com/funcompbio.github.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.9"

  spec.add_development_dependency "bundler", "~> 2.1.4"
  spec.add_development_dependency "rake", "~> 12.0"
end
