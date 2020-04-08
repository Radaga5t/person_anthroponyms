require 'rails_helper'

RSpec.describe Person, type: :model do
  let(:person) { create :person }

  it 'has a valid factory' do
    expect(create(:person)).to be_valid
  end

  describe 'association' do
    it { is_expected.to have_one(:person_case) }
  end
end
