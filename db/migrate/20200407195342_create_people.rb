# frozen_string_literal: true

class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.references :person_case

      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :full_name
      t.integer :sex, default: 0

      t.timestamps
    end
  end
end
