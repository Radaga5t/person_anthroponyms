# frozen_string_literal: true

# Person model (Nominative name case)
class Person < ApplicationRecord
  include HasCases

  before_save :set_fullname
  after_save  :generate_name_cases

  enum sex: %i[male female]

  has_one :person_case,
          dependent: :destroy

  def person_case
    super || create_person_case
  end

  private

  def set_fullname
    self.fullname = concat_names([lastname, firstname, middlename])
  end

  def generate_name_cases
    CASES.each do |word_case|
      tmp_form = Petrovich(firstname: firstname,
                           lastname: lastname,
                           middlename: middlename,
                           sex: sex).to(word_case)

      %i[firstname lastname middlename].map { |name| person_case.send("#{name}_#{word_case}=", tmp_form.send(name)) }
    end

    person_case.save
  end
end
