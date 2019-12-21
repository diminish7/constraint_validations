# frozen_string_literal: true

module ConstraintValidations
  # ActiveRecord concern that enables automatic numericality validation based on integer types
  module Integer
    extend ActiveSupport::Concern

    INTEGER_TYPES = %i[integer bigint].freeze

    included do
      # Automatic numericality validations
      columns.each do |column|
        next unless INTEGER_TYPES.include?(column.type)

        validates column.name.to_sym, numericality: integer_numericality_options(column)
      end
    end

    class_methods do
      protected

      def integer_numericality_options(column)
        {
          only_integer: true,
          allow_blank: true,
          less_than_or_equal_to: integer_upper_bound(column),
          greater_than_or_equal_to: integer_lower_bound(column)
        }
      end

      def integer_upper_bound(column)
        2**((column_size(column) * 8) - 1)
      end

      def integer_lower_bound(column)
        -integer_upper_bound(column)
      end

      def column_size(column)
        column.limit || default_column_size(column.sql_type)
      end

      def default_column_size(sql_type)
        sql_type == 'bigint' ? 8 : 4
      end
    end
  end
end
