require 'rails_helper'

RSpec.describe Variant, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:product) }
    it { is_expected.to have_many(:variant_options) }
    it { is_expected.to have_many(:options).through(:variant_options) }  
  end

  describe 'validations' do
    subject { create :variant }
    
    it { should validate_uniqueness_of(:sku) }
  end
end
