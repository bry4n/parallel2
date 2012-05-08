$:.unshift "lib"

require "rubygems"
require 'parallel2/version'

Gem::Specification.new do |gem|
  gem.name          = "parallel2"
  gem.version       = Parallel::VERSION
  gem.author        = "Bryan Goines"
  gem.summary       = "Parallel#each and Parallel#map are using Celluloid::Future"
  gem.email         = "bryann83@gmail.com"
  gem.homepage      = "https://github.com/bry4n/parallel2"
  gem.files = Dir['**/*']
  gem.add_dependency "celluloid", "0.10.0"
end
