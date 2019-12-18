# frozen_string_literal: true

require 'constraint_validations/engine'
require 'constraint_validations/not_null'

# ActiveRecord concern that enables some automatic validation based on DB constraints
module ConstraintValidations
  extend ActiveSupport::Concern
  include ConstraintValidations::NotNull
end
