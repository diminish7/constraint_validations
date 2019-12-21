# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'constraint_validations/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'constraint_validations'
  spec.version     = ConstraintValidations::VERSION
  spec.authors     = ['Jason Rush']
  spec.email       = ['diminish7@gmail.com']
  spec.homepage    = 'https://github.com/diminish7/constraint_validations'
  spec.summary     = 'Automatically add Rails validations from DB constraints.'
  spec.description = 'Automatically add Rails validations from DB constraints.'
  spec.license     = 'MIT'
  spec.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'rails', '~> 5.2.3'

  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'factory_bot_rails'
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rubocop-rspec'
  spec.add_development_dependency 'shoulda-matchers'
  spec.add_development_dependency 'sqlite3'
end
