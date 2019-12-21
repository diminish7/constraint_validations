# frozen_string_literal: true

class CreateThingWithIntegerFields < ActiveRecord::Migration[5.2]
  def change
    create_table :thing_with_integer_fields do |t|
      t.integer :field_with_integer_constraint
      t.bigint :field_with_big_integer_constraint
      t.integer :field_with_small_integer_constraint, limit: 2

      t.timestamps
    end
  end
end
