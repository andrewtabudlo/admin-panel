class CreateCohorts < ActiveRecord::Migration[5.1]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.string :startdate
      t.integer :tuition
      t.integer :instructor_id
      t.integer :course_id

      t.timestamps
    end
  end
end
