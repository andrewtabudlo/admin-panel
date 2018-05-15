class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :code
      t.string :name
      t.integer :tuition
      t.integer :hours

      t.timestamps
    end
  end
end
