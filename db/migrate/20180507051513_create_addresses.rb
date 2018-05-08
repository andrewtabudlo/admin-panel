class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :country
      t.string :company
      t.string :state
      t.string :city
      t.string :streetaddress
      t.string :apartment
      t.string :zip

      t.timestamps
    end
  end
end
