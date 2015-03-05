class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.integer :quantity
      t.integer :product_id
      t.integer :customer_id

      t.timestamps null: false
    end
  end
end
