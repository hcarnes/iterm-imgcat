
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "iterm/imgcat/version"

Gem::Specification.new do |spec|
  spec.name          = "iterm-imgcat"
  spec.version       = Iterm::Imgcat::VERSION
  spec.authors       = ["Hannah Carnes"]
  spec.email         = ["hecarnes@gmail.com"]

  spec.summary       = %q{Library that allows images to be displayed in iTerm2.}
  spec.description   = %q{Library that allows images to be displayed in iTerm2.}
  spec.homepage      = "https://github.com/hcarnes/iterm-imgcat"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
