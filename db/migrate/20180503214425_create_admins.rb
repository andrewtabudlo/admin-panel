class CreateAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :admins do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.integer :age
      t.string :password_digest

      t.timestamps
    end
  end
end
