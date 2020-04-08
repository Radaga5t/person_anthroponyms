# frozen_string_literal: true

class CreatePersonCases < ActiveRecord::Migration[6.0]
  def change
    create_table :person_cases do |t|
      t.references :person

      t.string :firstname_genitive
      t.string :firstname_dative
      t.string :firstname_accusative
      t.string :firstname_instrumental
      t.string :firstname_prepositional

      t.string :lastname_genitive
      t.string :lastname_dative
      t.string :lastname_accusative
      t.string :lastname_instrumental
      t.string :lastname_prepositional

      t.string :middlename_genitive
      t.string :middlename_dative
      t.string :middlename_accusative
      t.string :middlename_instrumental
      t.string :middlename_prepositional

      t.string :fullname_genitive
      t.string :fullname_dative
      t.string :fullname_accusative
      t.string :fullname_instrumental
      t.string :fullname_prepositional

      t.timestamps
    end
  end
end
