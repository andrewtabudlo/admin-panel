class CreateInstructors < ActiveRecord::Migration[5.1]
  def change
    create_table :instructors do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.integer :age
      t.integer :salary
      t.string :degree

      t.timestamps
    end
  end
end
