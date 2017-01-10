class CreateCarts < ActiveRecord::Migration[5.0]
  def self.up
    create_table :carts do |t|
      t.references :user
      t.timestamps
    end

    create_table :cart_products do |t|
      t.references :cart
      t.references :product
      t.timestamps
    end
  end

  def self.down
    drop_table :cart_products
    drop_table :carts
  end
end
