class AddPhoneNumber < ActiveRecord::Migration[5.0]
  def self.up
    add_column :credit_cards, :phone_number, :string, :default => '5305148831'
  end

  def self.down
    remove_column :credit_cards, :phone_number
  end
end
