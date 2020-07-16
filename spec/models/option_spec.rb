require 'rails_helper'

RSpec.describe Option, type: :model do
  describe 'associations' do  
    it { is_expected.to have_many(:variant_options) }
    it { is_expected.to have_many(:variants).through(:variant_options) }
  end

  describe 'validations' do
    subject { create :option }
    
    it { should validate_uniqueness_of(:option_type) }
  end
end
