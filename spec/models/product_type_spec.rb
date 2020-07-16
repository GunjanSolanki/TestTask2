require 'rails_helper'

RSpec.describe ProductType, type: :model do
  it { is_expected.to have_many(:products) } 
end
