# frozen_string_literal: true

require 'constraint_validations/engine'
require 'constraint_validations/not_null'
require 'constraint_validations/integer'

# ActiveRecord concern that enables some automatic validation based on DB constraints
module ConstraintValidations
  extend ActiveSupport::Concern
  include ConstraintValidations::NotNull
  include ConstraintValidations::Integer
end
