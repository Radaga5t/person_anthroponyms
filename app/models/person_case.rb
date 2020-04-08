# frozen_string_literal: true

# Person's first_/last_/middle_/full_name cases
class PersonCase < ApplicationRecord
  include HasCases

  before_save :set_fullname

  belongs_to :person

  private

  def set_fullname
    CASES.each do |word_case|
      send(
        "fullname_#{word_case}=",
        concat_names([send("lastname_#{word_case}"),
                      send("firstname_#{word_case}"),
                      send("middlename_#{word_case}")])
      )
    end
  end
end
