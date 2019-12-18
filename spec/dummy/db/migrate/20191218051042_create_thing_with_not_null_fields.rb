# frozen_string_literal: true

class CreateThingWithNotNullFields < ActiveRecord::Migration[5.2]
  def change
    create_table :thing_with_not_null_fields do |t|
      t.string :field_with_constraint, null: false
      t.string :field_without_constraint

      t.timestamps
    end
  end
end
