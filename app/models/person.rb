# frozen_string_literal: true

# Person model (Nominative name case)
class Person < ApplicationRecord
  before_save :set_full_name

  enum sex: %i[male female]

  has_one :person_case

  private

  def set_full_name
    self.full_name = "#{last_name} #{first_name} #{middle_name}"
  end
end
