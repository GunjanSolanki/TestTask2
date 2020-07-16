require 'rails_helper'

RSpec.describe ProductOption, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:product_type) }
  end

  describe 'validations' do
    subject { create :product_option }
    
    it { should validate_uniqueness_of(:supported_option_type) }
  end
end
