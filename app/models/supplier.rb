class Supplier < ApplicationRecord
  # def products
  #   @products = Product.where(supplier_id)
  # end
  has_many :products
end
