require 'rails_helper'

RSpec.describe VariantOption, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:variant) }
    it { is_expected.to belong_to(:option) }
  end
end
