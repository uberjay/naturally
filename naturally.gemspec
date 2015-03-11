lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'naturally/version'

Gem::Specification.new do |gem|
  gem.name          = "naturally"
  gem.version       = Naturally::VERSION
  gem.license       = 'MIT'
  gem.authors       = ["Robb Shecter"]
  gem.email         = ["robb@weblaws.org"]
  gem.summary       = %q{Sorts numbers according to the way people are used to seeing them.}
  gem.description   = %q{Natural Sorting with support for legal numbering, course numbers, and other number/letter mixes.}
  gem.homepage      = "http://github.com/dogweather/naturally"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
