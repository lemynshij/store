class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.references :user
      t.references :shipping_address
      t.references :credit_card
      t.float :tax_cost
      t.float :shipping_cost
      t.float :subtotal
      t.float :total_cost
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
