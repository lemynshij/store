class CreateCreditCards < ActiveRecord::Migration[5.0]
  def self.up
    create_table :credit_cards do |t|
      t.references :user
      t.string :number
      t.integer :month
      t.integer :year
      t.string :first_name
      t.string :last_name
      t.string :verification_value

      t.timestamps
    end
  end

  def self.down
    drop_table :credit_cards
  end
end
