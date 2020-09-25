class Product < ApplicationRecord

  validates :name, uniqueness: true, presence: true
  validates :description, length: { in: 10..150 } 
  validates :price,numericality: { greater_than: 0 }
  validates :inventory, numericality: { greater_than: 0 }

  belongs_to :supplier
  has_many :images
  # has_many :orders (removed product_ud from orders)
  has_many :product_categories
  has_many :carted_products
  
  has_many :categories, through: :product_categories

  # scope :title_search, -> (search_term) { where("name iLIKE ?", "%#{search_term}%") }
  # scope :discounted, ->(check_discount) { where("price < ?", 10) if check_discount }
  # scope :sorted, ->(sort, sort_order) {
  #   if sort == "price" && sort_order == "asc"
  #     order(price: :asc)
  #   elsif sort == "price" && sort_order == "desc"
  #     order(price: :desc)
  #   else
  #     order(id: :asc)
  #   end
  # }
  
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
