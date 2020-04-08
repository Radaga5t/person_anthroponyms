# frozen_string_literal: true

class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.references :person_case

      t.string :firstname
      t.string :lastname
      t.string :middlename
      t.string :fullname
      t.integer :sex, default: 0

      t.timestamps
    end
  end
end
