# frozen_string_literal: true

module HasCases
  extend ActiveSupport::Concern

  included do
    CASES = %i[genitive dative accusative instrumental prepositional].freeze

    private

    def concat_names(names)
      names.reject(&:blank?).join(' ')
    end
  end
end
