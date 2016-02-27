require 'spec_helper'

describe ShareActiveRecordModels::Product, type: :model do
  subject { build(:product) }

  it { is_expected.to be_valid }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_numericality_of(:price).is_greater_than_or_equal_to(2) }
end
