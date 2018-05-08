class CreateCourseTimelines < ActiveRecord::Migration[5.1]
  def change
    create_table :course_timelines do |t|
      t.integer :course_id
      t.integer :cohort_id
      t.string :title
      t.string :date
      t.text :content
      t.string :assignment

      t.timestamps
    end
  end
end
