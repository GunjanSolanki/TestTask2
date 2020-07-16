require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:product_type) }
    it { is_expected.to belong_to(:user) }
    it { is_expected.to have_many(:variants) }  
  end

  describe 'validations' do
    subject { create :product }
    
    it { should validate_uniqueness_of(:sku) }
  end
end
