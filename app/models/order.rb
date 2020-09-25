class Order < ApplicationRecord
belongs_to :user
# belongs_to :product removed product_id from order
has_many :products, through: :carted_products

has_many :carted_products
end
