module ShareActiveRecordModels
  class Product < Base
    validates :name, presence: true
    validates :price,
              numericality: { greater_than_or_equal_to: 2 }
  end
end
