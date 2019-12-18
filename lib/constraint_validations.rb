# frozen_string_literal: true

require 'constraint_validations/engine'

# ActiveRecord concern that enables some automatic validation based on DB constraints
module ConstraintValidations
  extend ActiveSupport::Concern

  RAILS_MANAGED_COLUMNS = %w[id created_at updated_at].freeze

  included do
    # Automatic presence validations
    columns.each do |column|
      next if column.null || RAILS_MANAGED_COLUMNS.include?(column.name)

      validates column.name.to_sym, presence: true
    end
  end
end
