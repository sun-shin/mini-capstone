class Product < ApplicationRecord

  validates :name, uniqueness: true, presence: true
  validates :description, length: { in: 10..150 } 
  validates :price,numericality: { greater_than: 0 }
  validates :inventory, numericality: { greater_than: 0 }

  has_many :images

  def supplier 
    @supplier = Supplier.find_by(id: supplier_id)
  end
  
  def is_discounted?
    price < 10
  end
  
  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
