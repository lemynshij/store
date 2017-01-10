class CreateShippingAddresses < ActiveRecord::Migration[5.0]
  def self.up
    create_table :shipping_addresses do |t|
      t.references :user
      t.string :first_name
      t.string :last_name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end

  def self.down
    drop_table :shipping_addresses
  end
end
