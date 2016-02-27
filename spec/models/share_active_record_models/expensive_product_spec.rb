require 'spec_helper'

describe ShareActiveRecordModels::ExpensiveProduct, type: :model do
  let!(:product) { create(:product, price: 101, name: 'so expensive') }

  describe 'expensive products' do
    it 'returns expensive ones!' do
      described_class.refresh

      expect(described_class.all).not_to be_empty
    end
  end
end
