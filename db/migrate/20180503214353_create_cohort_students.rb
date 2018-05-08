class CreateCohortStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :cohort_students do |t|
      t.integer :cohort_id
      t.integer :student_id
      t.integer :grade
      t.boolean :passing

      t.timestamps
    end
  end
end
