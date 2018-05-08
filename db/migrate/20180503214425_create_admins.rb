class CreateAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :admins do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :password
      t.boolean :active, :default => false
      t.integer :address_id

      t.timestamps
    end
  end
end
