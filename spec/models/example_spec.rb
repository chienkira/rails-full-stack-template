require 'rails_helper'

RSpec.describe Example, type: :model do
  describe 'Associations' do
  end

  describe 'Attributes' do
    describe '#name' do
      it { is_expected.to validate_presence_of(:name) }
    end
  end
end
