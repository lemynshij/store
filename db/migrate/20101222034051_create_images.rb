class CreateImages < ActiveRecord::Migration[5.0]
  def self.up
    create_table "product_images" do |t|
      t.string  :filename
      t.string  :content_type
      t.references :product, :null => false  
      t.integer :parent_id, :default => 0
      t.boolean :thumbnail
      t.integer :width
      t.timestamps
    end
    add_index :product_images, [:product_id, :parent_id]
  end

  def self.down
    drop_table "product_images"
  end
end
