# frozen_string_literal: true

FactoryBot.define do
  factory :thing_with_integer_field do
    field_with_small_integer_constraint { 1 }
    field_with_big_integer_constraint { 3_000_000_000 }
  end
end
