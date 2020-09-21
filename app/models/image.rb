class Image < ApplicationRecord
  belongs_to :product

  # def supplier 
  #   @supplier = Supplier.find_by(id: supplier_id)
  # end
end
