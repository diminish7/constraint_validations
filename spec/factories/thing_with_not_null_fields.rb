# frozen_string_literal: true

FactoryBot.define do
  factory :thing_with_not_null_field do
    field_with_constraint { 'foo' }
    field_without_constraint { 'bar' }
  end
end
