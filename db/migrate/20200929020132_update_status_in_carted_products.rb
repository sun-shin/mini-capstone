class UpdateStatusInCartedProducts < ActiveRecord::Migration[6.0]
  def change
    change_column :carted_products, :status, :string, default: "carted"
  end
end
