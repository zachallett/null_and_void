# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'null_and_void/version'

Gem::Specification.new do |gem|
  gem.name              = 'null_and_void'
  gem.version           = NullAndVoid::VERSION
  gem.authors           = %w{jfelchner}
  gem.email             = 'accounts+git@thekompanee.com'
  gem.summary           = %q{Easy Null Objects}
  gem.description       = %q{Makes generating Null Objects easy.}
  gem.homepage          = 'https://github.com/jfelchner/null_and_void'

  gem.executables       = Dir['{bin}/**/*'].map    { |bin| File.basename(bin) }.
                                            reject { |bin| %w{rails rspec rake setup deploy}.include? bin }
  gem.files             = Dir['{app,config,db,lib,templates}/**/*'] + %w{Rakefile README.md LICENSE}
  gem.test_files        = Dir['{test,spec,features}/**/*']
  gem.require_paths     = ['lib']

  gem.add_development_dependency 'rspec',        '~> 3.1'
  gem.add_development_dependency 'rspectacular', '~> 0.21.6'
end
