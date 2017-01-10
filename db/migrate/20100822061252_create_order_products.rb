class CreateOrderProducts < ActiveRecord::Migration[5.0]
  def self.up
    create_table :order_products do |t|
      t.references :order
      t.references :product

      t.timestamps
    end
  end

  def self.down
    drop_table :order_products
  end
end
