class UpdatePriceDataType < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :price, :decimal, precision: 6, scale: 2
    add_column :products, :inventory, :integer
  end
end
