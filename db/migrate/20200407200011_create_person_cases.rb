# frozen_string_literal: true

class CreatePersonCases < ActiveRecord::Migration[6.0]
  def change
    create_table :person_cases do |t|
      t.references :person

      t.string :first_name_genitive
      t.string :first_name_dative
      t.string :first_name_accusative
      t.string :first_name_instrumental
      t.string :first_name_prepositional

      t.string :last_name_genitive
      t.string :last_name_dative
      t.string :last_name_accusative
      t.string :last_name_instrumental
      t.string :last_name_prepositional

      t.string :middle_name_genitive
      t.string :middle_name_dative
      t.string :middle_name_accusative
      t.string :middle_name_instrumental
      t.string :middle_name_prepositional

      t.string :full_name_genitive
      t.string :full_name_dative
      t.string :full_name_accusative
      t.string :full_name_instrumental
      t.string :full_name_prepositional

      t.timestamps
    end
  end
end
